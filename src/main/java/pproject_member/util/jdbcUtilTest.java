package pproject_member.util;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;

import org.junit.Assert;
import org.junit.jupiter.api.Test;

class jdbcUtilTest {

	@Test
	void test() {
		System.out.println("testGetConnection()");
		Connection con = jdbcUtil.getConnection();
		System.out.println("con : " + con);
		Assert.assertNotNull(con);
	}

}
