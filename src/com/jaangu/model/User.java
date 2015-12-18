package com.jaangu.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class User implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue
    private int id;
    private String name;
    private String email;
    private String password;
    private String permanent_address;
    private String shipping_address;
    private String phone_no;
    private int location_id;
    private Date registration_date;
    
    public User() {}
    
 
     
    public User(String name, String email, String password, String permanent_address, String shipping_address, String phone_no, int location_id, java.sql.Date registration_date) 
    {
        this.name = name;
        this.email = email;
        this.password = password;
        this.permanent_address = permanent_address;
        this.shipping_address = shipping_address;
        this.phone_no = phone_no;
        this.location_id = location_id;
        this.registration_date = registration_date;
       
    }
    
    public int getId() {
        return id;
    }
 
     public void setId(int id) {
        this.id = id;
    }
     
     public String getName() {
         return name;
     }
  
      public void setName(String name) {
         this.name = name;
     }
      
      public String getEmail() {
          return email;
      }
   
       public void setEmail(String email) {
          this.email = email;
      }
       
       public String getPassword() {
           return password;
       }
    
        public void setPassword(String password) {
           this.password = password;
       }
        
        public String getPhone() {
            return phone_no;
        }
     
         public void setPhone(String phone_no) {
            this.phone_no = phone_no;
        }
         
         public String getPermanent_Address() {
             return permanent_address;
         }
      
          public void setpermanent_address(String permanent_address) {
             this.permanent_address = permanent_address;
         }
          
          public String getShipping_address() {
              return shipping_address;
          }
       
           public void setShipping_address(String shipping_address) {
              this.shipping_address = shipping_address;
          }
           
           public int getLocation_id() {
               return location_id;
           }
        
            public void setLocation_id(int location_id) {
               this.location_id = location_id;
           }
           
           public Date getRegistration_date() {
               return registration_date;
           }
        
            public void setRegistration_date(Date registration_date) {
               this.registration_date = registration_date;
           }
}
