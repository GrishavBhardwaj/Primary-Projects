#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <conio.h>
struct school{
	char name[100];
	int rollno;
	char department[100];
	int maths;
	int focp;
	int phy;
}a1,a2,a3;

void resulttopper();

void e(){
	system("cls"); printf("\nSchool Management System Closed\n"); exit(1);
}

void details(char l[100], char m[100], char n[100]){
	
	system("cls");
	char u[100];
	printf("\n--------------------------------Details Menu---------------------------------------\n");
	printf("\nEnter Grade To get details.\n");
	fflush(stdin);
	gets(u);
	
	if(strcmp(l,u)==0){
		fflush(stdin);
		printf("\nName\tRoll Number\tDepartment\tMaths\tFOCP\tPhysics\n");
		printf("%s\t %d\t %s\t %d\t %d\t %d\n", a1.name, a1.rollno, a1.department, a1.maths, a1.focp, a1.phy );
	}
	else 
	if(strcmp(m,u)==0){
		printf("\nName\tRoll Number\tDepartment\tMaths\tFOCP\tPhysics\n");
		printf("%s\t %d\t %s\t %d\t %d\t %d\n", a2.name, a2.rollno, a2.department, a2.maths, a2.focp, a2.phy );
	}
	else
	if(strcmp(n,u)==0){
		printf("\nName\tRoll Number\tDepartment\tMaths\tFOCP\tPhysics\n");
		printf("%s\t %d\t %s\t %d\t %d\t %d\n", a3.name, a3.rollno, a3.department, a3.maths, a3.focp, a3.phy );
	}
	sleep(1);
	
}

void add()
{

    system("cls");
    printf("-----------------------------Add Records----------------------------");
	printf("\nEnter Name Rollno  Department  Maths  FOCP  Physics for First Student\n");
	scanf("%s%d%s%d%d%d",a1.name,&a1.rollno, a1.department, &a1.maths, &a1.focp,&a1.phy);
	
	printf("\nEnter Name Rollno  Department  Maths  FOCP  Physics for Second Student\n");
	scanf("%s%d%s%d%d%d",a2.name, &a2.rollno, a2.department,  &a2.maths, &a2.focp,&a2.phy);
	
	printf("\nEnter Name Rollno  Department  Maths  FOCP  Physics for Third Student\n");
	scanf("%s%d%s%d%d%d",a3.name, &a3.rollno, a3.department,  &a3.maths, &a3.focp,&a3.phy);
	
	printf("\nRecord Has been added.\n");
	
	FILE *f;
	f = fopen("file student.txt","w+");
	fputs(a1.name,f); fputs("\t",f); fprintf(f, "%d", a1.rollno); fputs("\t",f); fputs(a1.department,f); fputs("\t",f); fprintf(f, "%d",a1.maths); fputs("\t",f); fprintf(f, "%d",a1.focp); fputs("\t",f); fprintf(f, "%d",a1.phy);
	fputs("\n",f); fputs(a2.name,f); fputs("\t",f); fprintf(f, "%d", a2.rollno); fputs("\t",f); fputs(a2.department,f); fputs("\t",f); fprintf(f, "%d", a2.maths); fputs("\t",f); fprintf(f, "%d", a2.focp); fputs("\t",f); fprintf(f, "%d", a2.phy);
	fputs("\n",f); fputs(a3.name,f); fputs("\t",f); fprintf(f, "%d", a3.rollno); fputs("\t",f); fputs(a3.department,f); fputs("\t",f); fprintf(f, "%d", a3.maths); fputs("\t",f); fprintf(f, "%d", a3.focp); fputs("\t",f); fprintf(f, "%d", a3.phy);
	fflush(stdin);
	fclose(f);
	sleep(1);
	resulttopper();
}

void login(){
	int count = 0;
	while(count<2){
	char a[50]= "abc";
	char b[50]= "123";
	char c[50];
	char d[50];
	printf("\nEnter ID: ");
	scanf("%s", c);
	printf("\nEnter Password: ");
	scanf("%s", d);
	if(strcmp(a,c)==0 && strcmp(b,d)==0){
			printf("\nLogin Successful.");
			break;
	}
	else{
		printf("\nWrong ID or Password.");
		++count;
		if(count==2) printf("\nBlocked System Message.\n");
        if(count==2) e();
	}
	}
}

void resulttopper(){
	
	fflush(stdin);
	system("cls");
	char l[100];
	char m[100];
	char n[100];
	printf("\n------------------------------------Result Page--------------------------------\n");
	float per1,per2,per3; 
    per1=(a1.maths+a1.focp+a1.phy)/3.0;
    printf("\nPercentage of First Student=%.2f\n",per1);
    if(per1>=90 && per1<=100)
    {
        printf("\nGrade A+");
        strcpy(l,"A+");
    }
    else if(per1>=80 && per1<90)
    {
        printf("\nGrade A");
         strcpy(l,"A");
    }
    else if(per1>=70&&per1<80)
    {
        printf("\nGrade B+");
         strcpy(l,"B+");
    }
    else if(per1>=60&&per1<70)
    {
        printf("\nGrade B");
         strcpy(l,"B");
    }
    else if(per1>=40&&per1<60)
    {
        printf("\nGrade C");
         strcpy(l,"C");
    }
    else
    {
        printf("\nGrade D");
         strcpy(l,"D");
    }
    
    per2=(a2.maths+a2.focp+a2.phy)/3.0;
    printf("\nPercentage of Second Student=%.2f\n",per2);
    if(per2>=90&&per2<=100)
    {
        printf("\nGrade A+");
        strcpy(m,"A+");
    }
    else if(per2>=80&&per2<90)
    {
        printf("\nGrade A");
        strcpy(m,"A");
    }
    else if(per2>=70&&per2<80)
    {
        printf("\nGrade B+");
        strcpy(m,"B+");
    }
    else if(per2>=60&&per2<70)
    {
        printf("\nGrade B");
        strcpy(m,"B");
    }
    else if(per2>=40&&per2<60)
    {
        printf("\nGrade C");
        strcpy(m,"C");
    }
    else
    {
        printf("\nGrade D");
        strcpy(m,"D");
    }
    
    per3=(a3.maths+a3.focp+a3.phy)/3.0;
    printf("\nPercentage of Third Student=%.2f\n",per3);
    if(per3>=90 && per3<=100)
    {
        printf("\nGrade A+");
        strcpy(n,"A+");
    }
    else if(per3>=80 && per3<90)
    {
        printf("\nGrade A");
        strcpy(n,"A");
    }
    else if(per3>=70 && per3<80)
    {
        printf("\nGrade B+");
        strcpy(n,"B+");
    }
    else if(per3>=60 && per3<70)
    {
        printf("\nGrade B");
        strcpy(n,"B");
    }
    else if(per3>=40 && per3<60)
    {
        printf("\nGrade C");
        strcpy(n,"C");
    }
    else
    {
        printf("\nGrade D");
        strcpy(n,"D");
    }
    
    
	int percent[100]= {per1,per2,per3};
    int largest,i;
	largest = percent[0];
	for(i=1;i<3;i++){
		if(largest<percent[i])
		largest = percent[i];
	}
	printf("\nPercentage of topper is: %d\n", largest);
	if(largest==per1){
		printf("\nName of topper is: %s\n", a1.name);
	}
	else
	if(largest==per2){
		printf("\nName of topper is: %s\n", a2.name);
	}
	else
	if(largest==per3){
		printf("\nName of topper is: %s\n", a3.name);
	}
	
	int q;
	printf("\nPress 1 to get details of students according to grade.\t Press 2 to exit.\n");
	scanf("%d", &q);
	if(q==1){
		printf("%s,%s,%s",l,m,n);
		sleep(2);
		details(l,m,n);
	}
	else
	if(q==2){
		e();
	}
    
}

void del(){
	
	fflush(stdin);
	system("cls");
	FILE *f1;
	f1 = fopen("file student.txt", "w");
	fclose(f1);
	printf("\n-----------------All records have been deleted.------------------------\n");
	exit(1);
}


int main(){
	
	char b;
	int perc;
	printf("\n--------------------------------SCHOOL MANAGEMENT SYSTEM----------------------------------------\n");
	login();
	fflush(stdin);
	system("cls");
	printf("\n\n\t\tMAIN MENU:");
 
                printf("\n\n\tADD RECORDS\t[1]");
 
                printf("\n\tDELETE RECORDS\t[2]");
 
                printf("\n\tUPDATE RECORDS\t[3]");
 
                printf("\n\tEXIT\t\t[4]");
 
                printf("\n\n\tENTER YOUR CHOICE:");
    fflush(stdin);           
    scanf("%c", &b);
    
    switch(b){
    	case '1' : add();
    	break;
		case '2' : del();
    	break;
		case '3' : {system("cls"); printf("\nError '404' not found"); exit(1);}
    	break;
		case '4' : e();
		break;
	}
	fflush(stdin);
	printf("\nPress 1 to get result and topper.\t Press 2 to exit.\t\n");
	scanf("%d", &perc);
	if(perc==1) resulttopper();	
	else
	if(perc==2) e();
	fflush(stdin);
	
}


