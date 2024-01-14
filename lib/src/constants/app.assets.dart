/// -- Declare all app icons here
const addIcon = 'add.icon.svg';
const arrowDownIcon = 'arrow.down.icon.svg';
const blockIcon = 'block.icon.svg';
const dislikeIcon = 'dislike.icon.svg';
const deleteIcon = 'delete.icon.svg';
const editIcon = 'edit.icon.svg';

/// -- Declare all app images here
const appLogo = 'reddit.png';
const thumbNail = 'thumbnail.jpg';
const user1 = 'user.1.webp';
const user2 = 'user.2.jpeg';
const user3 = 'user.3.jpg';

/// -- Declare all animation files here

const emptyLottie = 'empty.lottie.json';

class TAppAssets {
  TAppAssets._();

  static String iconRoot = 'assets/icons/';
  static String imageRoot = 'assets/images/';
  static String animRoot = 'assets/anims/';

  /// -- Returns entire image path
  static String getImagePath(String path) => imageRoot + path;

  /// -- Returns entire icon path
  static String getIconPath(String path) => iconRoot + path;

  /// -- Returns entire anim path
  static String getAnimPath(String path) => animRoot + path;
}
