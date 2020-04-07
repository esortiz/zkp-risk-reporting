import { Component, OnInit } from '@angular/core';
import { assets } from '../assets';

@Component({
  selector: 'app-prover',
  templateUrl: './prover.component.html',
  styleUrls: ['./prover.component.css']
})
export class ProverComponent implements OnInit {
  assets = assets;
  constructor() { }

  ngOnInit() {
  }

}