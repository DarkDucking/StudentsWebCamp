import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { CartService } from '../../tienda-guest/service/cart.service';

declare function alertSuccess([]):any;
declare function alertDanger([]):any;
declare var acceder:any;
@Component({
  selector: 'app-list-carts',
  templateUrl: './list-carts.component.html',
  styleUrls: ['./list-carts.component.css']
})
export class ListCartsComponent implements OnInit{

  listCarts:any = [];
  totalSum:number = 0;
  code:any = null;
  transactionCounter: number = 1;
  @ViewChild('acceder',{static: true}) paypalElement?: ElementRef;
  constructor(
    public cartService: CartService
  ) {
    
  }
  

  ngOnInit(): void {
    this.cartService.currentData$.subscribe((resp: any) => {
      console.log(resp);
      this.listCarts = resp;
      this.totalSum = 0;
    });
  }

  generateTransactionId(): string {
    // Genera un ID incremental basado en el contador
    const transactionId = this.transactionCounter.toString();
    return transactionId;
  }

  accederCurso(): void {
    // Verifica si hay cursos en el carrito
    if (this.listCarts.length === 0) {
      alertDanger("No has elegido ningún curso para registrarte");
      return;
    }

    // Genera un nuevo ID de transacción
    const transactionId = this.generateTransactionId();

    // Incrementa el contador para el próximo ID
    this.transactionCounter++;

    // Configuración de la transacción
    const dataT = {
      total: "0",
      n_transaccion: transactionId,
    };
    // Llama a la función para configurar la transacción
    this.cartService.checkout(dataT).subscribe((resp: any) => {
      console.log(resp);
      alertSuccess("Te hemos enviado un correo con los detalles, ya puedes acceder a los cursos ");
     
      // Puedes realizar más acciones si es necesario
    });
    
  }

  // getNameCampaing(type:number){
  //   let Name = "";
  //   switch (type) {
  //     case 1:
  //       Name = "CAMPAÑA NORMAL"
  //       break;
  //     case 2:
  //       Name = "CAMPAÑA FLASH"
  //       break;
  //     case 3:
  //       Name = "CAMPAÑA BANNER"
  //       break;
    
  //     default:
  //       break;
  //   }

  //   return Name;
  // }

  removeItem(cart:any){
    this.cartService.deleteCart(cart.id).subscribe((resp:any) => {
      console.log(resp);
      alertSuccess("EL ITEM SE A ELIMINADO CORRECTAMENTE ");
      this.cartService.removeItemCart(cart);
    })
  }

  // applyCupon(){
  //   if(!this.code){
  //     alertDanger("NECESITAS INGRESAR UN CUPON");
  //     return;
  //   }
  //   let data = {
  //     code: this.code,
  //   }
  //   this.cartService.applyCupon(data).subscribe((resp:any) => {
  //     console.log(resp);
  //     if(resp.message == 403){
  //       alertDanger(resp.message_text);
  //     }else{
  //       this.cartService.resetCart();
  //       setTimeout(() => {
  //         resp.carts.data.forEach((cart:any) => {
  //           this.cartService.addCart(cart);
  //         });
  //       }, 50);
  //       alertSuccess("EL CUPON SE HA REGISTRADO CORRECTAMENTE");
  //     }
  //   })
  // }
}
