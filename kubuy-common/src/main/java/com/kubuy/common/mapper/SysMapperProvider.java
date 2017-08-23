package com.kubuy.common.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.DELETE_FROM;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.scripting.xmltags.ForEachSqlNode;
import org.apache.ibatis.scripting.xmltags.MixedSqlNode;
import org.apache.ibatis.scripting.xmltags.SqlNode;
import org.apache.ibatis.scripting.xmltags.StaticTextSqlNode;

import com.github.abel533.mapper.MapperProvider;
import com.github.abel533.mapperhelper.EntityHelper;
import com.github.abel533.mapperhelper.MapperHelper;

public class SysMapperProvider extends MapperProvider {

    public SysMapperProvider(Class<?> mapperClass, MapperHelper mapperHelper) {
        super(mapperClass, mapperHelper);
    }

    public SqlNode deleteByIDS(MappedStatement ms) {
        Class<?> entityClass = getSelectReturnType(ms);
        Set<EntityHelper.EntityColumn> entityColumns = EntityHelper.getPKColumns(entityClass);
        EntityHelper.EntityColumn column = null;
        for (EntityHelper.EntityColumn entityColumn : entityColumns) {
            column = entityColumn;
            break;
        }
        
        List<SqlNode> sqlNodes = new ArrayList<SqlNode>();
        // 开始拼sql
        BEGIN();
        // delete from table
        DELETE_FROM(tableName(entityClass));
        // 得到sql
        String sql = SQL();
        // 静态SQL部分
        sqlNodes.add(new StaticTextSqlNode(sql + " WHERE " + column.getColumn() + " IN "));
        // 构造foreach sql
        SqlNode foreach = new ForEachSqlNode(ms.getConfiguration(), new StaticTextSqlNode("#{"
                + column.getProperty() + "}"), "ids", "index", column.getProperty(), "(", ")", ",");
        sqlNodes.add(foreach);
        return new MixedSqlNode(sqlNodes);
    }
    /**
     * 方法名称与接口名称要一一对应
     * @param ms
     * @return
     * 
     * 1.mybattis最终将通用mapper解析成sql语句,交给mysql执行
     * 2.SqlNode将接口方法最后转化为sql
     * 
     * 具体步骤:
     * 1.获取全路径
     * 2.获取对象的路径
     * 3.获取class的类型
     * 4.获取上级的接口
     * 5.获取泛型的类型
     * 6.获取泛型中的参数
     * 7.获取类型上的注解@Table
     * 8.获取注解上的name参数--表名
     */
    public SqlNode findCount(MappedStatement ms){
    	//1.获取方法的具体路径   包名.类名.方法名
    	String path=ms.getId();	//com.kubuy.mapper.ItemMapper.findCount()
    	//2.获取ItemMapper的路径 com.kubuy.mapper.ItemMapper
    	String classpath=path.substring(0, path.lastIndexOf("."));
    	
    	try {
    		//3.获取ItemMapper的class类型   发射
			Class<?> targetClass=Class.forName(classpath);
			//4.获取上级
			Type[] types=targetClass.getGenericInterfaces();
			//获取借口的直接类型SysMapper<Item>
			Type type=types[0];
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return null;
    }

}
