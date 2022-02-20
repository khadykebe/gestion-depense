import { Categorie } from './../../categorie';
import { Depense } from './../../depense';
import { DataService } from './../../service/data.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-depense-update',
  templateUrl: './depense-update.component.html',
  styleUrls: ['./depense-update.component.css']
})
export class DepenseUpdateComponent implements OnInit {

  id:any;
  data:any;
  categorie  = new Categorie();
  categories:any;
  depense = new Depense();
  
  constructor(private route:ActivatedRoute,private dataService:DataService) { }

  ngOnInit(): void {
    //console.log(this.route.snapshot.params.id);

    this.id = this.route.snapshot.params.id;
    this.getDepense();
    this.listeCategorie();

  }

  

  getDepense(){
    this.dataService.getDepense(this.id).subscribe(res =>{
       // console.log(res);
       this.data = res;
       this.depense = this.data;
    });
  }

  updateData(){
    this.dataService.updateData(this.id,this.data).subscribe(res =>{
      if(res){
        Swal.fire({
          title: 'vous étes sure de faire des changement',
          showDenyButton: true,
          showCancelButton: true,
          confirmButtonText: 'enrégistrer',
          denyButtonText: `ne pas enrégistrer`,
        }).then((result) => {
          /* Read more about isConfirmed, isDenied below */
          if (result.isConfirmed) {
            Swal.fire('enregistrer!', '', 'success')
          } else if (result.isDenied) {
            Swal.fire('nom modifier !', '', 'info')
          }
        })
      }
      //this.data = res;
    })
  }


  listeCategorie(){
    this.dataService.listeCategorie().subscribe(res => {
      this.categories = res;
    })

  }

}

