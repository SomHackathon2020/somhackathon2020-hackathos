import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class CoreService {
  uri: string = "http://localhost/hackathon/";

  constructor(private http: HttpClient) { }

  doPost(object: Object) {
    return this.http.post(this.uri, JSON.stringify(object));
  }
}
