package com.marble.pig.udf.filter;

import java.io.IOException;

import org.apache.pig.data.DefaultTuple;
import org.apache.pig.data.Tuple;
import org.junit.Test;


public class PigFilterFunctionTest {
	
	@Test
	public void testRun(){
		PigFilterFunction target = new PigFilterFunction();
		Tuple input = new DefaultTuple();
		try {
			@SuppressWarnings("unused")
			Boolean exec = target.exec(input);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
