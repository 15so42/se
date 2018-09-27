package action;



public class ActionTest {
    public String userName;

    public ActionTest(){};
    public ActionTest(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {

        this.userName = userName;
    }

    public  String  execute(){
        if(userName.equals("abc"))
            return "success";
        else
            return "fail";
    }
}
