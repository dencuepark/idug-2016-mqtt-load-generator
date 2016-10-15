package me.jasonbaik.loadtester.sender;

import me.jasonbaik.loadtester.reporter.Loggable;

public interface Sender<T> extends Loggable {

	public void init() throws Exception;

	public void destroy() throws Exception;

	public void interrupt() throws Exception;

	public void send() throws Exception;

}
