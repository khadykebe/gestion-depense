import { Router } from '@angular/router';
import { User } from './../../user';
import { DataService } from './../../service/data.service';
import { Component, OnInit } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-compte',
  templateUrl: './compte.component.html',
  styleUrls: ['./compte.component.css']
})
export class CompteComponent implements OnInit {

  user = new User();
  data :any;
  message :any;
  
  constructor(private dataService:DataService,private router:Router) { }
  
  ngOnInit(): void {
    

  }


  insertUser(){
  
    this.dataService.insertUser(this.user)
    .subscribe(res => {
      if(res){
        Swal.fire({
          icon: "success",
          title:"compte cree merci de se connecter"
        })
        setTimeout(() => {
          window.location.reload()
        }, 3000);
      }
        this.data = res;
        //this.router.navigate(['/']);
    },
    err => {
      this.message = err;
      //console.log(err);
    });
    
  }

  

}
