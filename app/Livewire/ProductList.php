<?php

namespace App\Livewire;

use App\Models\Producto;
use Gloudemans\Shoppingcart\Facades\Cart;
use Livewire\Component;
use Livewire\WithPagination;

class ProductList extends Component
{
    use WithPagination;

	protected $paginationTheme = 'bootstrap';

    public $search = '';
    public $perPage = 12;
    public $quantity = [];

    public function render()
    {
        $products = Producto::where('producto', 'like', '%' . $this->search . '%')
            ->paginate($this->perPage);

        $cartItems = Cart::content();

        foreach ($cartItems as $item) {
            // Inicializar la cantidad para cada elemento del carrito
            $this->quantity[$item->rowId] = $item->qty;
        }

        return view('livewire.product-list', ['products' => $products, 'cartItems' => $cartItems]);
    }

    public function addToCart($productId)
    {
        $product = Producto::find($productId);

        Cart::add([
            'id' => $product->id,
            'name' => $product->producto,
            'price' => $product->precio_venta,
            'qty' => 1
        ]);

        session()->flash('success_message', 'Producto agregado al carrito.');
    }

    public function updateQuantity($rowId)
    {
        $newCant = $this->quantity[$rowId];
        Cart::update($rowId, ['qty' => $newCant]);
    }

    public function removeFromCart($rowId)
    {
        Cart::remove($rowId);
        session()->flash('success_message', 'Producto eliminado del carrito.');
    }
}
