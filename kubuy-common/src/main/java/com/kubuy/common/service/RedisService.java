package com.kubuy.common.service;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import redis.clients.jedis.ShardedJedis;
import redis.clients.jedis.ShardedJedisPool;

@Service
public class RedisService {

	//有的工程需要，有的工程不需要。设置required=false，有就注入，没有就不注入。
    @Autowired(required = false)
    private ShardedJedisPool shardedJedisPool;

    private <T> T execute(Function<ShardedJedis, T> function) {
    	
        ShardedJedis shardedJedis = null;
        try {
            // 从连接池中获取到jedis分片对象
            shardedJedis = shardedJedisPool.getResource();
            return function.execute(shardedJedis);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (null != shardedJedis) {
                // 关闭，检测连接是否有效，有效则放回到连接池中，无效则重置状态
                shardedJedis.close();
            }
        }
        return null;
    }

    /**
     * 保存数据到redis中
     * 
     * @param key
     * @param value
     * @return
     */
    public String set(final String key, final String value) {
        return this.execute(new Function<ShardedJedis, String>() {
            @Override
            public String execute(ShardedJedis shardedJedis) {
                return shardedJedis.set(key, value);
            }

        });
    }

    /**
     * 保存数据到redis中，生存时间单位是：秒
     * 
     * @param key
     * @param value
     * @param seconds
     * @return
     */
    public String set(final String key, final String value, final Integer seconds) {
        return this.execute(new Function<ShardedJedis, String>() {
            @Override
            public String execute(ShardedJedis shardedJedis) {
                String result = shardedJedis.set(key, value);
                shardedJedis.expire(key, seconds);//设置生存时间     
                return result;
            }

        });
    }
    
    /**
     * 保存数据到redis中，生存时间单位是：毫秒
     * 
     * @param key
     * @param value
     * @param millSeconds
     * @return
     */
    public String set(final String key, final String value, final Long millSeconds) {
        return this.execute(new Function<ShardedJedis, String>() {
            @Override
            public String execute(ShardedJedis shardedJedis) {
                String result = shardedJedis.set(key, value);
                shardedJedis.pexpire(key, millSeconds);//设置生存时间     
                return result;
            }

        });
    }

    /**
     * 从redis中获取数据
     * 
     * @param key
     * @return
     */
    public String get(final String key) {
        return this.execute(new Function<ShardedJedis, String>() {
            @Override
            public String execute(ShardedJedis shardedJedis) {
                return shardedJedis.get(key);
            }

        });
    }

    /**
     * 设置key生存时间，单位：秒
     * 
     * @param key
     * @param seconds
     * @return
     */
    public Long expire(final String key, final Integer seconds) {
        return this.execute(new Function<ShardedJedis, Long>() {
            @Override
            public Long execute(ShardedJedis shardedJedis) {
            	
                return shardedJedis.expire(key, seconds);
            }

        });
    }
    
    

    /**
     * 从redis中删除数据
     * 
     * @param key
     * @return
     */
    public Long del(final String key) {
        return this.execute(new Function<ShardedJedis, Long>() {
            @Override
            public Long execute(ShardedJedis shardedJedis) {
                return shardedJedis.del(key);
            }
        });
    }
    /**
     * 保存进redis中
     * @param key	键盘
     * @param value	值
     * @return	若值存在,则插入不成功,返回0,若值不存在,插入成功,返回1
     */
    public Long setnx(final String key, final String value) {
        return this.execute(new Function<ShardedJedis, Long>() {
            @Override
            public Long execute(ShardedJedis shardedJedis) {
            	
                return shardedJedis.setnx(key, value);
            }

        });
    }
    /**
     * 对redis某个值进行修改,并返回旧值
     * @param key 键
     * @param value	值
     * @return 旧值,若不存在则返回nullsss
     */
    public String getSet(final String key, final String value) {
        return this.execute(new Function<ShardedJedis, String>() {
            @Override
            public String execute(ShardedJedis shardedJedis) {
                return shardedJedis.getSet(key, value);
            }

        });
    }
    /**
     * 对redis的某个值自减1
     * @param key 键
     * @return
     */
    public Long decr(final String key) {
        return this.execute(new Function<ShardedJedis, Long>() {
            @Override
            public Long execute(ShardedJedis shardedJedis) {           	
                return shardedJedis.decr(key);
            }

        });
    }
    
    /**
     * 从redis中添加set数据
     * 
     * @param key
     * @return
     */
    public Long sadd(final String key, final String... members) {
        return this.execute(new Function<ShardedJedis, Long>() {
            @Override
            public Long execute(ShardedJedis shardedJedis) {
                return shardedJedis.sadd(key, members);
            }
        });
    }
    /**
     * 从redis中添加set数据
     * 
     * @param key
     * @return
     */
    public Set<String> smembers(final String key) {
        return this.execute(new Function<ShardedJedis, Set<String>>(){
            @Override
            public Set<String> execute(ShardedJedis shardedJedis) {
                return shardedJedis.smembers(key);
            }
        });
    }
}
