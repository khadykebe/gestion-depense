import { Categorie } from './../../categorie';
import { DataService } from './../../service/data.service';
import { Depense } from './../../depense';
import { Component, OnInit } from '@angular/core';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-depense',
  templateUrl: './depense.component.html',
  styleUrls: ['./depense.component.css']
})
export class DepenseComponent implements OnInit {
  message : any;
  depenses:any;
  depense = new Depense();
  categorie  = new Categorie();
  categories:any;
  data : any;
  revenue :any;
  mois :any;
 mont :any;
  constructor(private dataService:DataService) { }
  
  ngOnInit(): void {
    this.montant();
    this.totalRevenue();
    this.listDepense();
    this.listeCategorie();
    

  }


  listDepense(){
    this.dataService.listDepense().subscribe(res => {
      this.depenses = res;
    })
  }

  newDepense(){
  
    this.dataService.newDepense(this.depense).subscribe(res => {
      if(res){
        Swal.fire({
          icon: "success",
          title:"depense ajoutee avec succes"
        })
        setTimeout(() => {
          window.location.reload()
        }, 3000);
      }
      console.log(res)
        //this.data = res;
        //this.listDepense();
    },
    err => {
      this.message = err;
        //console.log(err);
    }
    );
  }

  listeCategorie(){
    this.dataService.listeCategorie().subscribe(res => {
      this.categories = res;
    })

  }

  


 // getDepense(id:any){
    //this.dataService.getDepense(id).subscribe(res =>{
       // console.log(res);
    //});
  //}
  

  supDepense(id:any){
 
    this.dataService.supDepense(id).subscribe(res =>{
      if(res){

      Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
      }).then((res) => {
        if (res.isConfirmed) {
          Swal.fire(
            'Deleted!',
            'Your file has been deleted.',
            'success'
          )
        }
      })
      }
      this.listDepense();
      
    });
  }

  totalRevenue(){
    this.dataService.totalRevenue().subscribe(res => {
     // console.log(res);
      this.revenue = res;
    });
  }
  montant(){
    this.dataService.totalRevenue().subscribe(res => {
      //console.log(res);
      this.mont = res
    });

  }

}
