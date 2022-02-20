import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import Swal from 'sweetalert2';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  constructor(private httpClient:HttpClient) { }


  //creer un compte
  insertUser(data:any){
    return this.httpClient.post('http://127.0.0.1:8000/api/add_user',data);
  }

  // login
  login(data:any){
    return this.httpClient.post('http://127.0.0.1:8000/api/login',data);
  }

  //creer un new depense
  guestHeaders(){
    const user:any = sessionStorage.getItem('user');
    const userObj = JSON.parse(user);
    const token = userObj.token;
    return{
      "accept":"application/json",
      "content-type":"application/json",
      'authorization': 'Bearer ' + token,
      
    }
  }
  newDepense(data:any){
    return this.httpClient.post('http://127.0.0.1:8000/api/add_depense',data,{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }

  //list des depenses
  listDepense(){
    return this.httpClient.get('http://127.0.0.1:8000/api/all_depense',{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }

  listeCategorie(){
    return this.httpClient.get('http://127.0.0.1:8000/api/categorie');
  }
  //voir une depense
  getDepense(id:any){
    

    return this.httpClient.get('http://127.0.0.1:8000/api/one_depense/'+id,{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }

  //supprimer une depense

  supDepense(id:any){
    
 
    return this.httpClient.delete('http://127.0.0.1:8000/api/delete_depense/'+id,{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }

  updateData(id:any,data:any){
    return this.httpClient.put('http://127.0.0.1:8000/api/update_depense/'+id,data,{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }

  getUser(){
    return this.httpClient.get('http://127.0.0.1:8000/api/user',{
      headers:this.guestHeaders(),
      observe:"body",
    })
  }

  addRevenue(data:any){
    return this.httpClient.post('http://127.0.0.1:8000/api/add_revenue',data,{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }

  montantTotalJour(){
    return this.httpClient.get('http://127.0.0.1:8000/api/montant_journee',{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }

  montantTotalMois(){
    return this.httpClient.get('http://127.0.0.1:8000/api/montant_mois',{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }

  montantTotalAnnee(){
    return this.httpClient.get('http://127.0.0.1:8000/api/montant_annee',{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }

  totalRevenue(){
    return this.httpClient.get('http://127.0.0.1:8000/api/total_revenue',{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }
  
  montant(){
    return this.httpClient.get('http://127.0.0.1:8000/api/monant',{
      headers:this.guestHeaders(),
      observe:"body",
    });
  }

}
