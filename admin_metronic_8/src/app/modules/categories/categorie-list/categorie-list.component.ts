import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { CategorieService } from '../service/categorie.service';
import { CategorieAddComponent } from '../categorie-add/categorie-add.component';
import { CategorieEditComponent } from '../categorie-edit/categorie-edit.component';
import { CategorieDeleteComponent } from '../categorie-delete/categorie-delete.component';

@Component({
  selector: 'app-categorie-list',
  templateUrl: './categorie-list.component.html',
  styleUrls: ['./categorie-list.component.scss']
})
export class CategorieListComponent implements OnInit {
  CATEGORIES: any[];
  
  isLoading:any = null;

  search:any = null;
  state:any = null;

  constructor(
    public modalService: NgbModal,
    public categorieService: CategorieService,
  ) { }

  ngOnInit(): void {
    this.isLoading = this.categorieService.isLoading$;

    this.listCategorie();
  }
  
  listCategorie(){
    this.categorieService.listCategories(this.search, this.state).subscribe((resp:any) => {
      console.log(resp);
      this.CATEGORIES = resp.categories.data;
    })
  }

  openModalCreateCategorie(){
    const modalRef = this.modalService.open(CategorieAddComponent,{centered:true, size: 'md'});
    modalRef.componentInstance.CATEGORIES = this.CATEGORIES;

    modalRef.componentInstance.CategorieC.subscribe((categorie:any) =>
    {
      console.log(categorie);
      this.CATEGORIES.unshift(categorie);
    })

 
  }
  editCategorie(CATEGORIE:any){
    const modalRef = this.modalService.open(CategorieEditComponent,{centered:true, size: 'md'});
    modalRef.componentInstance.categorie = CATEGORIE.filter((categorie:any) => !categorie.categorie_id);

    modalRef.componentInstance.CategorieE.subscribe((categorie:any) =>
    {
      console.log(categorie);
      let INDEX = this.CATEGORIES.findIndex((item:any) => item.id == categorie.id);
      this.CATEGORIES[INDEX] = categorie;
    })

  }
  deleteCategorie(CATEGORIES:any){
    const modalRef = this.modalService.open(CategorieDeleteComponent,{centered:true, size: 'md'});
    modalRef.componentInstance.categorie = CATEGORIES;

    modalRef.componentInstance.CategorieD.subscribe((resp:any) =>
    {
      let INDEX = this.CATEGORIES.findIndex((item:any) => item.id == CATEGORIES.id);
      this.CATEGORIES.splice(INDEX,1);
    })
  }

}
