import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class CoreService {
  uri: string = "http://127.0.0.1/hackathon";

  constructor(private http: HttpClient) { }

  doPost(object: Object) {
    let corsHeaders = new HttpHeaders({
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Access-Control-Allow-Origin': '*'
    });
    return this.http.post(this.uri, object, { headers: corsHeaders });
  }
}
