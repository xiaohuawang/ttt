
 

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Hcdept;
import model.Hcmojor;
import model.Hcuser;
import model.UserType;
import DB.HcdeptDB;
import DB.HcmojorDB;
import DB.HcuserDB;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/EditUserServlet")
public class EditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doget edituser servlet");
		String idstr = request.getParameter("id");
		int id=Integer.parseInt(idstr);		
		Hcuser hcuser=HcuserDB.getUserByID(id);
		//Hcuser hcuser=HcuserDB.getCourseByID(id);
		
		
		//Hccourse hccourse=HccourseDB.getCourseByID(id);	
		request.setAttribute("hcuser", hcuser); 
		List<Hcdept> depts = HcdeptDB.getAllDepts();
		request.setAttribute("depts", depts); 
		List<Hcmojor> majors=HcmojorDB.getAllMajors();
		request.setAttribute("majors", majors); 
		
		List<UserType> lists = new ArrayList<UserType>();
		lists.add(new UserType(1, "Student"));
		lists.add(new UserType(2, "Instructor"));
		lists.add(new UserType(3, "Advisor"));
		lists.add(new UserType(4, "Admin"));
		request.setAttribute("lists", lists);
		
		getServletContext().getRequestDispatcher("/editUser.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
