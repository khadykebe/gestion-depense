import { DataService } from './../../service/data.service';
import { Depense } from './../../depense';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-liste',
  templateUrl: './liste.component.html',
  styleUrls: ['./liste.component.css']
})
export class ListeComponent implements OnInit {

  depenses:any;
  depense = new Depense();
  message: any;
  data : any;
  jour : any;
  mois : any;
  annee :any;
  constructor(private dataService:DataService) { }

  ngOnInit(): void {
    this.listDepense();
    this.montantTotalJour();
    this.montantTotalMois();
    this.montantTotalAnnee();
  }


  listDepense(){
    this.dataService.listDepense().subscribe(res => {
    //console.log(res);
     this.depenses = res ;
    },
    err =>  {
      //console.log(err)
      this.message=err;
    });
  }

  newDepense(){
    this.dataService.newDepense(this.depense).subscribe(res => {
        this.listDepense();
    });
  }


  supDepense(id:any){
    this.dataService.supDepense(id).subscribe(res =>{
      this.listDepense();
    });
  }

  montantTotalJour(){
    this.dataService.montantTotalJour().subscribe(res =>{
      //console.log(res);
      this.jour=res;
    });
  }

  montantTotalMois(){
    this.dataService.montantTotalMois().subscribe(res =>{
      //console.log(res);
      this.mois=res;
    });
  }

  montantTotalAnnee(){
    this.dataService.montantTotalAnnee().subscribe(res =>{
      //console.log(res);
      this.annee=res;
    });
  }

 
}
