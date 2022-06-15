import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'familytree';
  // details: any;
  form: any;
  table1: any;
  tr1: any;
  img1: any;
  cell1: any = document.createElement("td");
  cell: any = document.createElement("td");
  button: any;
  count1: number = 3;
  count2: number = 3;
  cell2: any;

  constructor() {
  }

  onClick1() {
    this.img1 = document.getElementById("img1");
    this.cell1.style.display = "table-cell";
    this.cell1.style.width = "2000px";
    this.cell1.style.textAlign = "center";
    this.cell1.style.padding = "10px";
    this.cell1.style.backgroundColor = "#ffd580";
    this.cell1.style.borderRadius = "10px";
    this.cell1.innerHTML = "<div class = 'new'>Name : Bob <br> Job : Mr. Incredible <br> Age : 40 <br> Sex : Male</div class = 'new'>";
    this.img1.appendChild(this.cell1);

    console.log("sup");
  }

  onDblClick1() {
    console.log("hi");
    this.cell1.style.display = "none";
  }

  onClick2() {
    this.img1 = document.getElementById("img2");
    this.cell1.style.display = "table-cell";
    this.cell1.style.width = "1000px";
    this.cell1.style.textAlign = "center";
    this.cell1.style.padding = "10px";
    this.cell1.style.borderRadius = "10px";
    this.cell1.style.backgroundColor = "#ffd580";
    this.cell1.innerHTML = "<div class = 'new'>Name : Violet <br> Job : Invisible girl <br> Age : 18 <br> Sex : Female</div class = 'new'>";
    this.img1.appendChild(this.cell1);

    console.log("sup");
  }

  onDblClick2() {
    console.log("hi");
    this.cell1.style.display = "none";
  }

  onClick3() {
    this.img1 = document.getElementById("img3");
    this.cell1.style.display = "table-cell";
    this.cell1.style.width = "1000px";
    this.cell1.style.textAlign = "center";
    this.cell1.style.borderRadius = "10px";
    this.cell1.style.padding = "10px";
    this.cell1.style.backgroundColor = "#ffd580";
    this.cell1.innerHTML = "<div class = 'new'>Name : Jack-Jack <br> Job : Baby <br> Age : 3 <br> Sex : Male</div class = 'new'>";
    this.img1.appendChild(this.cell1);

    console.log("sup");
  }

  onDblClick3() {
    console.log("hi");
    this.cell1.style.display = "none";
  }

  add() {
    this.form = document.getElementsByTagName("form")[0];
    this.form.style.display = "inline-block";
  }

  remove() {
    this.form = document.getElementsByTagName("form")[0];
    this.form.style.display = "none";
    if (this.count1 == 3) { }
    else {
      this.count1 = this.count1 - 1;
      this.cell = document.getElementById(`${this.count1}+`);
      this.cell.remove();
      if (this.count1 == 6) {
        this.count2 = 3;
      }
      if (this.count1 == 14) {
        this.count2 = 7;
      }
    }
  }

  addForm() {
    this.form = document.getElementsByTagName("form")[0];
    this.form.style.display = "none";
    if (this.count1 == 3 || this.count1 == 7) {
      this.table1 = document.getElementsByTagName("table")[0];
      this.tr1 = document.createElement("tr");
      this.tr1.id = `${this.count1}`;
      this.table1.appendChild(this.tr1);
    }

    if (this.count1 < 7) {
      this.tr1 = document.getElementById(`${this.count2}`);
      this.cell = document.createElement("td");
      this.cell.setAttribute("colspan", "2");
      this.cell.style.display = "table-cell";
      this.cell.style.width = "25%";
      this.cell.style.textAlign = "center";
      this.cell.style.border = "1px solid black";
      this.cell.style.padding = "10px";
      this.cell.id = `${this.count1}+`;
      this.cell.innerHTML = `<div class = 'new'>Child ${this.count1} <br><img style='border-radius: 40px;
      transition: 0.5s;' width ='50%' src = 'https://cdn.imgbin.com/15/16/17/imgbin-thumb-signal-man-meme-stock-photography-man-dVCkqYazXPf7uBZZPg9GPfPYn.jpg'></img>
      </div class = 'new'>`;
      this.cell2 = document.createElement("td");
      this.cell2.style.display = "table-cell";
      this.cell2.style.width = "1000px";
      this.cell2.style.textAlign = "center";
      this.cell2.style.borderRadius = "10px";
      this.cell2.style.padding = "10px";
      this.cell2.style.backgroundColor = "#ffd580";
      this.cell2.innerHTML = `Name: ${this.getAll().name} <br> Job: ${this.getAll().job} <br> Age: ${this.getAll().age} <br> Sex: ${this.getAll().sex} <br>`;
      this.cell.appendChild(this.cell2);
      this.tr1.appendChild(this.cell);
    }

    if (this.count1 < 15 && this.count1 >= 7) {
      this.tr1 = document.getElementById(`${this.count2}`);
      this.cell = document.createElement("td");
      this.cell.setAttribute("colspan", "1");
      this.cell.style.display = "table-cell";
      this.cell.style.width = "12.5%";
      this.cell.style.textAlign = "center";
      this.cell.style.border = "1px solid black";
      this.cell.style.padding = "10px";
      this.cell.id = `${this.count1}+`;
      this.cell.innerHTML = `<div class = 'new'>Child ${this.count1} <br><img style='border-radius: 40px;
      transition: 0.5s;' width ='50%' src = 'https://cdn.imgbin.com/15/16/17/imgbin-thumb-signal-man-meme-stock-photography-man-dVCkqYazXPf7uBZZPg9GPfPYn.jpg'></img>
      </div class = 'new'>`;
      this.cell2 = document.createElement("td");
      this.cell2.style.display = "table-cell";
      this.cell2.style.width = "1000px";
      this.cell2.style.textAlign = "center";
      this.cell2.style.borderRadius = "10px";
      this.cell2.style.padding = "10px";
      this.cell2.style.backgroundColor = "#ffd580";
      this.cell2.innerHTML = `Name: ${this.getAll().name} <br> Job: ${this.getAll().job} <br> Age: ${this.getAll().age} <br> Sex: ${this.getAll().sex} <br>`;
      this.cell.appendChild(this.cell2);
      this.tr1.appendChild(this.cell);
    }

    this.count1 = this.count1 + 1;
    if (this.count1 == 7) {
      this.count2 = 7;
    }
    if (this.count1 == 15) {
      this.count2 = 15;
    }
  }


  //form part
  name: any;
  age: any;
  job: any;
  sex: any;
  detail: any;


  onClickSubmit(data: any) {
    this.name = data.name;
    this.age = data.age;
    this.job = data.job;
    this.sex = data.sex;

    this.addForm();
  }

  getAll() {
    this.detail = { "name": `${this.name}`, "age": `${this.age}`, "job": `${this.job}`, "sex": `${this.sex}` };
    return this.detail;
  }
}
