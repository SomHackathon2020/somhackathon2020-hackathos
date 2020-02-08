import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class CoreService {
  uri: string = "http://127.0.0.1/hackathon";

  constructor(private http: HttpClient) { }

  doPost(object: Object) {
    return this.http.post(this.uri, object, { observe: 'response' });
  }
}
