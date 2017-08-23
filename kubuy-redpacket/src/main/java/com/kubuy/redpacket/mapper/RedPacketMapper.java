package com.kubuy.redpacket.mapper;

import java.util.List;

import com.kubuy.redpacket.pojo.RedPacket;
import com.kubuy.redpacket.pojo.UseRedpacket;

public interface RedPacketMapper {

	public void creatRedPacket(RedPacket redPacket);

	public void updateRedPacket(RedPacket redPacket);

	public void creatUseRedPacket(List<UseRedpacket> useRedpacketList);
	
}
