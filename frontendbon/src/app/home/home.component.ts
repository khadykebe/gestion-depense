import { Categorie } from './../categorie';
import { Revenue } from './../revenue';
import { DataService } from './../service/data.service';
import { Component, OnInit } from '@angular/core';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  categorie  = new Categorie();
  categories:any;
  user:any;
  revenue = new Revenue();
  data:any;
  message : any;
  constructor(private dataService:DataService) { }

  ngOnInit(): void {
    this.listeCategorie();
    this.getUser();
    
  }

  getUser(){
    this.dataService.getUser().subscribe(res =>{

      console.log(res);
      this.user = res;
    })
  }

 addRevenue(){
 
   this.dataService.addRevenue(this.revenue).subscribe(res =>{
     if(res){
      Swal.fire({
        icon: "success",
        title:"revenue ajoutee"
      })
      setTimeout(() => {
        window.location.reload()
      }, 3000);
     }
     // console.log(res);
     this.data = res;
   },
    err =>{
      this.message = err;
    });
 }

 listeCategorie(){
  this.dataService.listeCategorie().subscribe(res => {
    this.categories = res;
  })

  }

  

  
}
