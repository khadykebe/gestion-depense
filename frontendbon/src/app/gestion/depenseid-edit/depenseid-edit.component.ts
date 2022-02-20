import { Depense } from './../../depense';
import { DataService } from './../../service/data.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-depenseid-edit',
  templateUrl: './depenseid-edit.component.html',
  styleUrls: ['./depenseid-edit.component.css']
})
export class DepenseidEditComponent implements OnInit {

  id:any;
  data:any;
  depense = new Depense();

  constructor(private route:ActivatedRoute,private dataService:DataService) { }

  ngOnInit(): void {
    //console.log(this.route.snapshot.params.id);

    this.id = this.route.snapshot.params.id;
    this.getDepense();
  }

  

  getDepense(){
    this.dataService.getDepense(this.id).subscribe(res =>{
       // console.log(res);
       this.data = res;
       this.depense = this.data;
    });
  }

}
