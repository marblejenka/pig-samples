package com.marble.pig.udf.filter;

import java.io.IOException;
import java.util.List;

import org.apache.pig.FilterFunc;
import org.apache.pig.FuncSpec;
import org.apache.pig.backend.executionengine.ExecException;
import org.apache.pig.data.Tuple;
import org.apache.pig.impl.logicalLayer.FrontendException;

public class PigFilterFunction extends FilterFunc {

	@Override
	public List<FuncSpec> getArgToFuncMapping() throws FrontendException {
		// TODO Auto-generated method stub
		return super.getArgToFuncMapping();
	}

	@Override
	public Boolean exec(Tuple input) throws IOException {
		if (input == null || input.size() == 0) {
			return false;
		}

		try {
			Object object = input.get(0);
			if (object == null) {
				return false;
			}
			int i = Integer.class.cast(object);
			return i == 0 | i == 1 || i == 4 || i == 5 || i == 9;
		} catch (ExecException e) {
			throw new IOException(e);
		}
	}
}
