<?php

namespace Config;

use App\Controllers\SupplierController;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (is_file(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('HomeController');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(false);
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
// $routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'HomeController::index');
$routes->get('tes', 'HomeController::getTes');

$routes->group('api/v1', function ($routes) {
    
    $routes->resource('commentarticle', ['controller' => 'CommentArticleController']);
    $routes->delete('unarchiveArticle/(:any)/(:any)', 'ArchiveArticleController::deleteArchiveArticle/$1/$2');
    $routes->get('allarchivearticlewithdetail/(:any)', 'ArchiveArticleController::allArchiveArticleByUser/$1');
    $routes->resource('archivearticle', ['controller' => 'ArchiveArticleController']);
    $routes->get('isarchivearticle/(:segment)/(:segment)', 'LikeController::isArchiveArticle/$1/$2');
    $routes->get('islikearticle/(:segment)/(:segment)', 'LikeController::isLikeArticle/$1/$2');
    $routes->get('dislikearticle/(:segment)/(:segment)', 'LikeController::dislikeArticle/$1/$2');
    $routes->get('likearticle/(:segment)/(:segment)', 'LikeController::likeArticle/$1/$2');

    // $routes->get('purchasedetail/showpurchasedetail/(:segment)', 'PurchaseDetailController::showPurchaseDetail/$1');
    $routes->resource('chat', ['controller' => 'ChatController']);
    $routes->get('archive_tour/(:segment)/(:segment)', 'ArchiveTourController::archiveTourbyUser/$1/$2');
    $routes->get('isarchivetour/(:segment)/(:segment)', 'LikeController::isArchiveTour/$1/$2');
    $routes->get('unarchivetour/(:any)/(:any)', 'ArchiveTourController::deleteArchiveTour/$1/$2');
    $routes->get('allarchivetourbyuser/(:any)', 'ArchiveTourController::allArchiveTourByUser/$1');
    $routes->resource('archivetour', ['controller' => 'ArchiveTourController']);
    $routes->resource('commenttour', ['controller' => 'CommentTourController']);
    $routes->resource('user', ['controller' => 'UserController']);
    $routes->resource('medicalfacility', ['controller' => 'MedicalFacilityController']);
    $routes->resource('restaurant', ['controller' => 'RestaurantController']);
    $routes->resource('police', ['controller' => 'PoliceController']);
    $routes->resource('hotel', ['controller' => 'HotelController']);
    $routes->get('newarticle/(:any)', 'ArticleController::newArticle/$1');
    $routes->get('newarticle', 'ArticleController::newArticle');
    $routes->resource('article', ['controller' => 'ArticleController']);
    $routes->resource('state', ['controller' => 'StateController']);
    $routes->get('isliketour/(:segment)/(:segment)', 'LikeController::isLikeTour/$1/$2');
    $routes->get('disliketour/(:segment)/(:segment)', 'LikeController::dislikeTour/$1/$2');
    $routes->get('liketour/(:segment)/(:segment)', 'LikeController::likeTour/$1/$2');
    $routes->get('allimagetour/(:segment)', 'TourController::allImageTour/$1');
    $routes->get('tourbystate/(:segment)', 'TourController::tourByState/$1');
    $routes->get('populertour/(:any)', 'TourController::populerTour/$1');
    $routes->get('populertour', 'TourController::populerTour');
    $routes->get('recomendedtour', 'TourController::recomendedTour');
    $routes->get('recomendedtour/(:any)', 'TourController::recomendedTour/$1');
    $routes->get('newtour', 'TourController::newTour');
    $routes->get('newtour/(:any)', 'TourController::newTour/$1');
    $routes->resource('tour', ['controller' => 'TourController']);
});
/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
