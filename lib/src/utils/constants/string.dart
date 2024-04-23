// ignore_for_file: non_constant_identifier_names

const FINISHED_ON_BOARDING = 'finishedOnBoarding';
const COLOR_ACCENT = 0xFF8fd468;
const COLOR_PRIMARY_DARK = 0xFF683A;
var COLOR_PRIMARY = 0xFFFF683A;
const FACEBOOK_BUTTON_COLOR = 0xFF415893;
const DARK_COLOR = 0xff191A1C;
const DARK_VIEWBG_COLOR = 0xff191A1C;
const DARK_CARD_BG_COLOR = 0xff242528;
const DARK_BG_COLOR = 0xff121212;
const COUPON_BG_COLOR = 0xFFFCF8F3;
const COUPON_DASH_COLOR = 0xFFCACFDA;
const GREY_TEXT_COLOR = 0xff5E5C5C;
const DARK_GREY_TEXT_COLOR = 0xff9F9F9F;
const DarkContainerColor = 0xff26272C;
const DarkContainerBorderColor = 0xff515151;

double radiusValue = 0.0;

const STORY = 'story';
const MENU_ITEM = 'menu_items';
const USERS = 'users';
const dynamicNotification = 'dynamic_notification';
const emailTemplates = 'email_templates';
const REFERRAL = 'referral';
const REPORTS = 'reports';
const Deliverycharge = 6;
const VENDOR_ATTRIBUTES = "vendor_attributes";
const REVIEW_ATTRIBUTES = "review_attributes";
const FavouriteItem = "favorite_item";
const VENDORS = 'vendors';
const PRODUCTS = 'vendor_products';
const ORDERS = 'restaurant_orders';
const ORDERS_TABLE = 'booked_table';
const GIFT_CARDS = 'gift_cards';
const GIFT_PURCHASES = 'gift_purchases';
const SECOND_MILLIS = 1000;
const MINUTE_MILLIS = 60 * SECOND_MILLIS;
const HOUR_MILLIS = 60 * MINUTE_MILLIS;
const SERVER_KEY = 'Replace Your server key';
String GOOGLE_API_KEY = '';

const ORDER_STATUS_PLACED = 'Order Placed';
const ORDER_STATUS_ACCEPTED = 'Order Accepted';
const ORDER_STATUS_REJECTED = 'Order Rejected';
const ORDER_STATUS_DRIVER_PENDING = 'Driver Pending';
const ORDER_STATUS_DRIVER_REJECTED = 'Driver Rejected';
const ORDER_STATUS_SHIPPED = 'Order Shipped';
const ORDER_STATUS_IN_TRANSIT = 'In Transit';
const ORDER_STATUS_COMPLETED = 'Order Completed';
const ORDERREQUEST = 'Order';
const BOOKREQUEST = 'TableBook';

const PAYMENT_SERVER_URL = 'https://murmuring-caverns-94283.herokuapp.com/';

const USER_ROLE_DRIVER = 'driver';
const USER_ROLE_CUSTOMER = 'customer';
const USER_ROLE_VENDOR = 'vendor';
const VENDORS_CATEGORIES = 'vendor_categories';
const Order_Rating = 'foods_review';
const CONTACT_US = 'ContactUs';
const COUPON = 'coupons';
const Wallet = "wallet";
const Currency = 'currencies';
const HomePageVersion = 'home_page_version';
const Setting = 'settings';
const tax = 'tax';
const StripeSetting = 'stripeSettings';
const FavouriteRestaurant = "favorite_restaurant";

const walletTopup = "wallet_topup";
const newVendorSignup = "new_vendor_signup";
const payoutRequestStatus = "payout_request_status";
const payoutRequest = "payout_request";
const newOrderPlaced = "new_order_placed";

const COD = 'CODSettings';

const GlobalURL = "Replace Your Base url";

const scheduleOrder = "schedule_order";
const dineInPlaced = "dinein_placed";
const dineInCanceled = "dinein_canceled";
const dineinAccepted = "dinein_accepted";
const driverAccepted = "driver_accepted";
const restaurantRejected = "restaurant_rejected";
const driverCompleted = "driver_completed";
const restaurantAccepted = "restaurant_accepted";
const takeawayCompleted = "takeaway_completed";
const orderPlaced = "order_placed";

String? homePageThem = "them_1";

String referralAmount = "0.0";

String placeholderImage = 'https://firebasestorage.googleapis.com/v0/b/foodies-3c1d9.appspot.com/o/images%2Fplace_holder.png?alt=media&token=f391844e-0f04-44ed-bf37-e6a1c7d91020';



//routes
class AppRoutes {
  //AUTH ROUTES
  static const splash = '/splash';
  static const politics = '/politics';
  static const company = '/company';
  static const onboarning = '/onboarning';
  static const permission = '/permission';
  static const register = '/register';
  static const login = '/login';
  //HOME ROUTES
  static const home = '/home';
  //WORK ROUTES
  static const work = '/work';
  static const confirm = '/confirm-work';
  static const history = '/historic';
  //NAVIGATION ROUTES
  static const notes = '/create-note';

  static const navigation = '/navigation';
  static const editStore = '/edit-store-popup';
  static const importStore = '/import-store-popup';
  static const recovery = '/recovery-popup';
  static const downloader = '/downloader-popup';
  //SUMMARY ROUTES
  static const summary = '/summary';
  static const summaryNavigation = '/summary-navigation';
  static const summaryGeoReference = '/summary-geo-reference';

  static const inventory = '/inventory';
  static const package = '/package';
  static const camera = '/camera';
  static const firm = '/firm';
  static const qr = '/code-qr';
  static const photo = '/photos';
  static const detailPhoto = '/detail-photo';
  //TRANSACTIONS ROUTES
  static const collection = '/collection';
  static const collectionNot = '/not-collection';
  static const partial = '/partial';
  static const reject = '/reject';
  static const rejectMotive = '/rejectMotive';
  static const respawn = '/respawn';
  static const respawnMotive = '/respawnMotive';
  //DRAWER ROUTES
  static const notifications = '/notifications';
  static const transaction = '/transaction';
  static const query = '/query';
  static const dispatch = '/dispatch';
  static const quote = '/quote';
  static const collectionQuery = '/collection-query';
  static const devolutionQuery = '/devolution-query';
  static const respawnQuery = '/respawn-query';
  //DEVELOPER ROUTES
  static const database = '/database';
  static const processingQueue = '/processing-queue';
  static const processingQueueDetail = '/processing-queue-detail';
  static const transactions = '/transactions';
  static const locations = '/locations';
  static const issue = '/issues';
  static const state = '/state';
  static const fillState = '/fill-state';
  static const fillIssue = '/fill-issue';
  static const codeQr = '/code-qr';
}