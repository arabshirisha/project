import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRouting } from './app.routing';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CourseComponent } from './course/course.component';
import { HomeComponent } from './home/home.component';
import { ContactComponent } from './contact/contact.component';
import { LoginComponent } from './login/login.component';

import { RouterModule, Routes } from '@angular/router';
import { FeedbackComponent } from './feedback/feedback.component';
import { RegisterComponent } from './register/register.component';
import { ViewfeedbackComponent } from './viewfeedback/viewfeedback.component';
import { FormsModule } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';
import { ViewcourseComponent } from './viewcourse/viewcourse.component';
import { MycourseComponent } from './mycourse/mycourse.component';
import { AdminComponent } from './admin/admin.component';
import { ForgotpasswordComponent } from './forgotpassword/forgotpassword.component';

/*

const appRoutes: Routes = [
  { path: 'course', component: CourseComponent },
  { path: 'home', component: HomeComponent },
  { path: 'contact', component: ContactComponent },
  { path: 'mycourse', component: MycourseComponent },
  { path: 'feedback', component: FeedbackComponent },
  { path: 'viewfeedback', component: ViewfeedbackComponent },
  { path: 'viewcourse', component: ViewcourseComponent },
  { path: 'viewcontact', component: ViewcontactComponent },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  ];
 */
const appRoutes: Routes = [
 
  { path: 'home', component: HomeComponent },
  { path: 'contact', component: ContactComponent },
  { path: 'mycourse', component: MycourseComponent },
  { path: 'feedback', component: FeedbackComponent },
  { path: 'viewcourse', component: ViewcourseComponent },
  { path: 'login', component: LoginComponent },
  { path: 'forgotpassword', component: ForgotpasswordComponent },

  { path: 'register', component: RegisterComponent },
  { path: 'admin', component: AdminComponent,
    children: [
    
      { path: '', redirectTo: 'home', pathMatch: 'full' },
      { path: 'home', component: HomeComponent },
      { path: 'course', component: CourseComponent },
      { path: 'viewfeedback', component: ViewfeedbackComponent },
      { path: 'login', component: LoginComponent }
    ]
  },

  ];
   

@NgModule({
  declarations: [
    AppComponent,
    CourseComponent,
    HomeComponent,
    ContactComponent,
    LoginComponent,
    AppRouting,
    FeedbackComponent,
    RegisterComponent,
    ViewfeedbackComponent,
  
    ViewcourseComponent,
    MycourseComponent,
    AdminComponent,
    ForgotpasswordComponent,
  
  ],
  imports: [BrowserModule,AppRoutingModule,RouterModule.forRoot(appRoutes),FormsModule,ReactiveFormsModule],
  providers: [],
  bootstrap: [AppRouting]
})
export class AppModule { }
