package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.JobDAO;
import com.dao.UserDAO;
import com.entity.Jobs;
import com.entity.User;

@WebServlet("/update_profile")
public class UpdateUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String qua = req.getParameter("qualification");
            String email = req.getParameter("email");
            String ps = req.getParameter("password");

            UserDAO dao = new UserDAO(DBConnect.getconn());
            
        
            User u = new User();
            u.setEmail(email);
            u.setId(id);
            u.setName(name);
            u.setQualification(qua);
            u.setPassword(ps);
            
            
            boolean f = dao.updateUser(u);
            HttpSession session = req.getSession();
            if (f) {
                session.setAttribute("succMsg", "Profile Updated Sucessfully");
                resp.sendRedirect("home.jsp");
            } else {
                session.setAttribute("succMsg", "Something went wrong on server!!");
                resp.sendRedirect("home.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

Person-5
//Addpostservelet.java

package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.JobDAO;
import com.entity.Jobs;

@WebServlet("/add_job")
public class AddPostServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String title= req.getParameter("title");
            String location= req.getParameter("location");
            String category= req.getParameter("category");
            String status= req.getParameter("status");
            String desc= req.getParameter("desc");
            
            Jobs j=new Jobs();
            j.setTitle(title);
            j.setDescription(desc);
            j.setLocation(location);
            j.setStatus(status);
            j.setCategory(category);
            
            HttpSession session = req.getSession();
            
            JobDAO dao = new JobDAO(DBConnect.getconn());
            boolean f=dao.addJobs(j);
            if(f) {
                session.setAttribute("succMsg", "Job Posted Sucessfully..");
                resp.sendRedirect("add_job.jsp");
            }else {
                session.setAttribute("succMsg", "Something went wrong on server!!");
                resp.sendRedirect("add_job.jsp");
            }
            
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

}

//deletejobservelet.java

package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.JobDAO;

@WebServlet("/delete")
public class DeleteJobServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));

            JobDAO dao = new JobDAO(DBConnect.getconn());
            boolean f = dao.deleteJob(id);

            HttpSession session = req.getSession();

            if (f) {
                session.setAttribute("succMsg", "Job Deleted Sucessfully..");
                resp.sendRedirect("view_job.jsp");
            } else {
                session.setAttribute("succMsg", "Something went wrong on server!!");
                resp.sendRedirect("view_job.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

