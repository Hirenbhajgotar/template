<?php

use App\Http\Controllers\AboutUsController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\BlogContrller;
use App\Http\Controllers\ContactUsContrller;
use App\Http\Controllers\FaqContrller;
use App\Http\Controllers\GalaryContrller;
use App\Http\Controllers\OrderContrller;
use App\Http\Controllers\SettingContrller;
use App\Http\Controllers\TeamContrller;
use App\Http\Controllers\TestimonialContrller;
use App\Http\Controllers\UserContrller;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::middleware(['auth:sanctum'])->group(function() {
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
    Route::get('admin/galary/edit', [GalaryContrller::class, 'edit'])->name('edit_galary');
    // !Team
    Route::get('admin/team', [TeamContrller::class, 'index'])->name('team');
    Route::get('admin/team/add', [TeamContrller::class, 'create'])->name('create_team');
    Route::get('admin/team/edit', [TeamContrller::class, 'edit'])->name('edit_team');
    // !Testimonial
    Route::get('admin/testimonial', [TestimonialContrller::class, 'index'])->name('testimonial');
    Route::get('admin/testimonial/add', [testimonialContrller::class, 'create'])->name('create_testimonial');
    Route::get('admin/testimonial/edit', [testimonialContrller::class, 'edit'])->name('edit_testimonial');
    // !User
    Route::get('admin/user', [UserContrller::class, 'index'])->name('user');
    Route::get('admin/user/add', [UserContrller::class, 'create'])->name('create_user');
    Route::get('admin/user/edit', [UserContrller::class, 'edit'])->name('edit_user');
    // !Categor
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
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    re