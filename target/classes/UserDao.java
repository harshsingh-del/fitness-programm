
public class UserDao {
	private String jdbcURL="jdbc:mysql://localhost:3006/OnlineFitnessAssistant";
	private String jdbcUserName="root";
	private String jdbcUserPassword="575707";
	
	
	private  static final String INSERT_user_sql="INSERT INTO users";
	private static final String SELCT _USER_BY_ID="SELECT _USER_WHERE ID?;";
	private  static final String SELECT_ALL _USERS="SELECT * FROM USERS ;";
	private  static final String DELETE_USERS_SQL ="DELETE FROM USER WHERE ID=?;";
	
}

