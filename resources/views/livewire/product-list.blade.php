<div class="row">
    <div class="col-md-7">
        <div class="card">
            <div class="card-body">

                <input wire:model.live="search" type="text" placeholder="Buscar productos..."
                    class="form-control mb-2">

                <div class="row">
                    @foreach ($products as $product)
                        <div class="col-md-3 mb-4">
                            <div class="card">
                                <div class="card-body card-container">
                                    <div class="img-container overflow-hidden">
                                        <img class="img-thumbnail"
                                            src="{{ $product->foto ? 'storage/' . $product->foto : 'img/default.png' }}"
                                            alt="">
                                    </div>
                                    <button class="btn btn-primary btn-sm button" type="button" wire:click="addToCart({{ $product->id }})">
                                        <i class="fas fa-shopping-cart"></i>
                                    </button>
                                    <br />
                                    <h5 class="card-title">{{ $product->producto }}</h5>
                                    <p class="card-text">${{ $product->precio_venta }}</p>
                                </div>
                            </div>

                        </div>
                    @endforeach
                </div>
            </div>
            <div class="card-footer">
                {{ $products->links() }}
            </div>
        </div>


    </div>
    <div class="col-md-5">
        <div class="card">
            <div class="card-body">
                @if ($message = Session::get('success_message'))
                    <div class="alert fade_success .fade">
                        <button aria-hidden="true" data-dismiss="alert" class="close" type="button">&times;</button>
                        <strong>{{ $message }}</strong>
                    </div>
                @endif
                <table class="table" style="width: 100%">
                    <thead>
                        <tr>
                            <th>Producto</th>
                            <th>Cantidad</th>
                            <th>Precio</th>
                            <th></th>
                            <!-- Agrega más columnas según tus necesidades -->
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($cartItems as $item)
                            <tr>
                                <td>{{ $item->name }}</td>
                                <td>
                                    <input type="number" wire:model.defer="quantity.{{ $item->rowId }}"
                                        wire:change="updateQuantity('{{ $item->rowId }}')" class="form-control">
                                </td>
                                <td>${{ number_format($item->price, 2) }}</td>
                                <td><button wire:click="removeFromCart('{{ $item->rowId }}')"
                                        class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></button></td>
                                <!-- Agrega más columnas según tus necesidades -->
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="card-footer">
                <h3>Total del Carrito: ${{ Cart::subtotal() }}</h3>
            </div>
        </div>
    </div>

</div>
