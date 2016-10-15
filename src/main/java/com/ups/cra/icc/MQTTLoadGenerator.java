package com.ups.cra.icc;

import org.springframework.beans.BeansException;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import me.jasonbaik.loadtester.sender.Sender;
import me.jasonbaik.loadtester.sender.SenderFactory;
import me.jasonbaik.loadtester.valueobject.Send;

public class MQTTLoadGenerator {

	public static void main(String[] args) throws BeansException, Exception {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("file:/tmp/idug2016.xml");
		Send<?> send = context.getBean(Send.class);
		Sender<?> sender = SenderFactory.newInstance(send.getSenderConfig());
		sender.send();
		context.close();
	}

}
