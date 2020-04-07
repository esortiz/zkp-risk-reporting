import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';

import { AppComponent } from './app.component';
import { ProverComponent } from './prover/prover.component';
import { VerifierComponent } from './verifier/verifier.component';
import { StartComponent } from './start/start.component';

@NgModule({
  imports: [ 
    BrowserModule, 
    FormsModule,
    RouterModule.forRoot([
      { path: '', component: StartComponent },
      { path: 'prover', component: ProverComponent },
      { path: 'verifier', component: VerifierComponent },
    ])
  ],
  declarations: [ 
    AppComponent, 
    ProverComponent, 
    VerifierComponent, 
    StartComponent 
  ],
  bootstrap: [ AppComponent ]
})

export class AppModule { }
