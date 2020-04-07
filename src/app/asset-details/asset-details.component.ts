import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { assets } from '../assets';


@Component({
  selector: 'app-asset-details',
  templateUrl: './asset-details.component.html',
  styleUrls: ['./asset-details.component.css']
})
export class AssetDetailsComponent implements OnInit {
  asset;

  calculateProof(input){
    
  }

  constructor(
    private route: ActivatedRoute
  ) { }

  ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this.asset = assets[+params.get('assetId')]
    })
  }

}