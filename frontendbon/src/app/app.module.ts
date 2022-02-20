import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CompteComponent } from './user/compte/compte.component';
import { LoginComponent } from './user/login/login.component';
import { DepenseComponent } from './gestion/depense/depense.component';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { DepenseidEditComponent } from './gestion/depenseid-edit/depenseid-edit.component';
import { DepenseUpdateComponent } from './gestion/depense-update/depense-update.component';
import { ListeComponent } from './gestion/liste/liste.component';
import { HomeComponent } from './home/home.component';

const appRoutes:Routes=[
  {path:'',component:LoginComponent},
  {path:'compte',component:CompteComponent},
  {path:'depense',component:DepenseComponent},
  {path:'liste',component:ListeComponent},
  //{path:'depense',component:DepenseComponent},

  {path:'liste/edit/:id',component:DepenseidEditComponent},
  {path:'liste/update/:id',component:DepenseUpdateComponent},
  {path:'home',component:HomeComponent}
  
];

@NgModule({
  declarations: [
    AppComponent,
    CompteComponent,
    LoginComponent,
    DepenseComponent,
    DepenseidEditComponent,
    DepenseUpdateComponent,
    ListeComponent,
    HomeComponent,
    
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    RouterModule.forRoot(appRoutes)
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
