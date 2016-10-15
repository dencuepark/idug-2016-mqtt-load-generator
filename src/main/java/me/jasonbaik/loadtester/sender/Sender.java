package me.jasonbaik.loadtester.sender;

public interface Sender<T> {

	public void init() throws Exception;

	public void destroy() throws Exception;

	public void interrupt() throws Exception;

	public void send() throws Exception;

}
