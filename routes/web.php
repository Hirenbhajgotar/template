<?php

use App\Http\Controllers\AboutUsController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AdminTypeController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\BlogContrller;
use App\Http\Controllers\ContactUsContrller;
use App\Http\Controllers\CountryMasterController;
use App\Http\Controllers\FaqContrller;
use App\Http\Controllers\GalaryContrller;
use App\Http\Controllers\OrderContrller;
use App\Http\Controllers\PermisionController;
use App\Http\Controllers\SettingContrller;
use App\Http\Controllers\StateMasterController;
use App\Http\Controllers\TeamContrller;
use App\Http\Controllers\TestimonialContrller;
use App\Http\Controllers\UserContrller;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});
// !logout route
Route::get('/logout', function() { 
    auth()->logout();
    return redirect('/login');
});
Route::get('/404', function() {
    return abort(404);
})->name('not_found');
Route::get('/401', function() {
    return abort(401);
})->name('not_authorized');

Route::middleware(['auth:sanctum', 'verified', 'isAdmin'])->group(function() {
    Route::get('admin', [AdminController::class, 'index'])->name('admin');
    // !About Us
    Route::get('admin/about-us', [AboutUsController::class, 'index'])->name('about_us');
    Route::get('admin/about-us/add', [AboutUsController::class, 'create'])->name('create_aboute_us');
    Route::post('admin/about-us/add', [AboutUsController::class, 'add'])->name('add_aboute_us');
    Route::get('admin/about-us/edit/{id}', [AboutUsController::class, 'edit'])->name('edit_aboute_us');
    Route::post('admin/about-us/edit/{id}', [AboutUsController::class, 'update'])->name('update_aboute_us');
    // !Contect Us
    Route::get('admin/contect-us', [ContactUsContrller::class, 'index'])->name('contect_us');
    Route::get('admin/contect-us/add', [ContactUsContrller::class, 'create'])->name('create_contect_us');
    Route::post('admin/contect-us/add', [ContactUsContrller::class, 'store'])->name('store_contect_us');
    Route::get('admin/contect-us/edit/{id}', [ContactUsContrller::class, 'edit'])->name('edit_contect_us');
    Route::post('admin/contect-us/edit/{id}', [ContactUsContrller::class, 'update'])->name('update_contect_us');
    // !Banners
    Route::get('admin/banner', [BannerController::class, 'index'])->name('banner');
    Route::get('admin/banner/add', [BannerController::class, 'create'])->name('create_banner');
    Route::post('admin/banner/add', [BannerController::class, 'store'])->name('store_banner');
    Route::get('admin/banner/edit/{id}', [BannerController::class, 'edit'])->name('edit_banner');
    Route::post('admin/banner/edit/{id}', [BannerController::class, 'update'])->name('update_banner');
    Route::get('admin/banner/delete/{id}', [BannerController::class, 'destroy'])->name('delete_banner');
    // !Blog
    Route::get('admin/blog', [BlogContrller::class, 'index'])->name('blog');
    Route::get('admin/blog/add', [BlogContrller::class, 'create'])->name('create_blog');
    Route::post('admin/blog/add', [BlogContrller::class, 'store'])->name('store_blog');
    Route::get('admin/blog/edit/{id}', [BlogContrller::class, 'edit'])->name('edit_blog');
    Route::post('admin/blog/update/{id}', [BlogContrller::class, 'update'])->name('update_blog');
    Route::get('admin/blog/delete/{id}', [BlogContrller::class, 'destroy'])->name('delete_blog');
    // !Galary
    Route::get('admin/galary', [GalaryContrller::class, 'index'])->name('galary');
    Route::get('admin/galary/add', [GalaryContrller::class, 'create'])->name('create_galary');
    Route::post('admin/galary/add', [GalaryContrller::class, 'store'])->name('store_galary');
    Route::get('admin/galary/edit/{id}', [GalaryContrller::class, 'edit'])->name('edit_galary');
    Route::post('admin/galary/edit/{id}', [GalaryContrller::class, 'update'])->name('update_galary');
    Route::get('admin/galary/delete/{id}', [GalaryContrller::class, 'destroy'])->name('delete_galary');
    // !Team
    Route::get('admin/team', [TeamContrller::class, 'index'])->name('team');
    Route::get('admin/team/add', [TeamContrller::class, 'create'])->name('create_team');
    Route::post('admin/team/add', [TeamContrller::class, 'store'])->name('store_team');
    Route::get('admin/team/edit/{id}', [TeamContrller::class, 'edit'])->name('edit_team');
    Route::post('admin/team/edit/{id}', [TeamContrller::class, 'update'])->name('update_team');
    Route::get('admin/team/delete/{id}', [TeamContrller::class, 'destroy'])->name('delete_team');
    // !Testimonial
    Route::get('admin/testimonial', [TestimonialContrller::class, 'index'])->name('testimonial');
    Route::get('admin/testimonial/add', [testimonialContrller::class, 'create'])->name('create_testimonial');
    Route::post('admin/testimonial/add', [testimonialContrller::class, 'store'])->name('store_testimonial');
    Route::get('admin/testimonial/edit/{id}', [testimonialContrller::class, 'edit'])->name('edit_testimonial');
    Route::post('admin/testimonial/edit/{id}', [testimonialContrller::class, 'update'])->name('update_testimonial');
    Route::get('admin/testimonial/delete/{id}', [testimonialContrller::class, 'destroy'])->name('delete_testimonial');
    // !User
    Route::get('admin/user', [UserContrller::class, 'index'])->name('user');
    Route::get('admin/user/add', [UserContrller::class, 'create'])->name('create_user');
    Route::get('admin/user/edit', [UserContrller::class, 'edit'])->name('edit_user');
    // !Category
    // Route::get('admin/category', [UserContrller::class, 'index'])->name('category');
    // Route::get('admin/category/add', [UserContrller::class, 'create'])->name('create_category');
    // Route::get('admin/category/edit', [UserContrller::class, 'edit'])->name('edit_category');
    // !Product
    // Route::get('admin/category', [UserContrller::class, 'index'])->name('category');
    // Route::get('admin/category/add', [UserContrller::class, 'create'])->name('create_category');
    // Route::get('admin/category/edit', [UserContrller::class, 'edit'])->name('edit_category');
    // !Order
    Route::get('admin/order', [OrderContrller::class, 'index'])->name('order');
    Route::get('admin/order/add', [OrderContrller::class, 'create'])->name('create_order');
    Route::get('admin/order/edit', [OrderContrller::class, 'edit'])->name('edit_order');
    // !Faq
    Route::get('admin/faq', [FaqContrller::class, 'index'])->name('faq');
    Route::get('admin/faq/add', [FaqContrller::class, 'create'])->name('create_faq');
    Route::get('admin/faq/edit', [FaqContrller::class, 'edit'])->name('edit_faq');
    // !Seting
    Route::get('admin/seting', [SettingContrller::class, 'index'])->name('seting');
    Route::get('admin/seting/add', [SettingContrller::class, 'create'])->name('create_seting');
    Route::get('admin/seting/edit', [SettingContrller::class, 'edit'])->name('edit_seting');
    // !Mail Template
    // Route::get('admin/seting', [SettingContrller::class, 'index'])->name('seting');
    // Route::get('admin/seting/add', [SettingContrller::class, 'create'])->name('create_seting');
    // Route::get('admin/seting/edit', [SettingContrller::class, 'edit'])->name('edit_seting');
    // !Admin Type
    Route::get('admin/admin-type', [AdminTypeController::class, 'index'])->name('admin_type');
    Route::get('admin/admin-type/add', [AdminTypeController::class, 'create'])->name('create_admin_type');
    Route::post('admin/admin-type/add', [AdminTypeController::class, 'store'])->name('store_admin_type');
    Route::get('admin/admin-type/edit/{id}', [AdminTypeController::class, 'edit'])->name('edit_admin_type');
    Route::post('admin/admin-type/edit/{id}', [AdminTypeController::class, 'update'])->name('update_admin_type');
    Route::get('admin/admin-type/delete/{id}', [AdminTypeController::class, 'destroy'])->name('delete_admin_type');
    // !Permisions
    Route::get('admin/permision', [PermisionController::class, 'index'])->name('permisions');
    Route::get('admin/permision/add', [PermisionController::class, 'create'])->name('create_permisions');
    Route::post('admin/permision/add', [PermisionController::class, 'create'])->name('store_permisions');
    Route::get('admin/permision/edit/{id}', [PermisionController::class, 'edit'])->name('edit_permisions');
    Route::post('admin/permision/edit/{id}', [PermisionController::class, 'update'])->name('update_permisions');
    Route::get('admin/permision/delete/{id}', [PermisionController::class, 'destroy'])->name('delete_permisions');
    
    // !Country master
    Route::get('admin/country', [CountryMasterController::class, 'index'])->name('country_master'); 
    Route::get('admin/country/add', [CountryMasterController::class, 'create'])->name('create_country_master'); 
    Route::post('admin/country/add', [CountryMasterController::class, 'store'])->name('store_country_master'); 
    Route::get('admin/country/edit/{id}', [CountryMasterController::class, 'edit'])->name('edit_country_master'); 
    Route::post('admin/country/edit/{id}', [CountryMasterController::class, 'update'])->name('update_country_master'); 
    Route::get('admin/country/delete/{id}', [CountryMasterController::class, 'destroy'])->name('delete_country_master'); 
    // !State master
    Route::get('admin/state', [StateMasterController::class, 'index'])->name('state_master'); 
    Route::get('admin/state/add', [StateMasterController::class, 'create'])->name('create_state_master'); 
    Route::post('admin/state/add', [StateMasterController::class, 'store'])->name('store_state_master'); 
    Route::get('admin/state/edit/{id}', [StateMasterController::class, 'edit'])->name('edit_state_master'); 
    Route::post('admin/state/edit/{id}', [StateMasterController::class, 'update'])->name('update_state_master'); 
    Route::get('admin/state/delete/{id}', [StateMasterController::class, 'destroy'])->name('delete_state_master'); 

});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
