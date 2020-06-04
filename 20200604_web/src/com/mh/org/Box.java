package com.mh.org;

public class Box<T> {
	private T o;
	public T geto() {
		return o;
	}
	public void seto(T o) {
		this.o = o;
	}
}
