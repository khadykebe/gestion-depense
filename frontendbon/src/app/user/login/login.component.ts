import { User } from './../../user';
import { DataService } from './../../service/data.service';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  user = new User();
  data :any;
  constructor(private httpClient:HttpClient,private router:Router,private dataService:DataService) { }
 
  message:any;
  basic = '';
  ngOnInit(): void {
  }




onSubmit(form:NgForm){
    const email = form.value.email;
    const password = form.value.password;
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': this.basic });
    let options = { headers: headers };
 // console.log(options);
    const data= {
    "email":email,
    "password":password
    }
    return this.httpClient.post('http://127.0.0.1:8000/api/login',data,options)
        .subscribe(
            res =>{
                //console.log(res);
                sessionStorage.setItem('user',JSON.stringify(res));
                this.router.navigate(['home']);
            },
            err => {
              this.message = err;
                //console.log(err);
            }
        );
      
    
}
    

 
    
    /*//console.log(email,password);

    this.httpClient.post('http://127.0.0.1:8000/api/login',{
      email:email,
      password:password,
    }).subscribe((res:any) =>{

      //console.log(res);
      sessionStorage.setItem('user',JSON.stringify(res));

      //redirect to depence
     this.router.navigate(['depense']);

    },
    err =>{
      console.log(err);

    })*/
  }