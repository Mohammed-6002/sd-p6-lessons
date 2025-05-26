<?php 
session_start();
include_once("modules/database.php");
include_once("modules/functions.php");

$errors = [];
$inputs = [];

const EMAIL_REQUIRED = 'Email invullen';
const EMAIL_INVALID = 'Geldig email adres invullen';
const PASSWORD_REQUIRED = 'Password invullen';
const CREDENTIALS_NOT_VALID = 'Verkeerde email en/of password';

if (isset($_POST['login'])) {
    $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
    if (!$email) {
        $errors['email'] = EMAIL_INVALID;
    } else {
        $inputs['email'] = $email;
    }

    $password = filter_input(INPUT_POST, 'password');
    if (!$password) {
        $errors['password'] = PASSWORD_REQUIRED;
    } else {
        $inputs['password'] = $password;
    }

    if (count($errors) === 0) {
        $result = checkLogin($inputs);
        switch ($result) {
            case 'ADMIN':
                header("Location: admin.php");
                exit;
            case 'FAILURE':
                $errors['credentials'] = CREDENTIALS_NOT_VALID;
                include_once "Login.php";
                break;
        }
    } else {
        include_once "Login.php";
    }
}
?>

<div class="container-lg">
    <h4>Inloggen</h4>
    <?php if (!empty($errors['credentials'])): ?>
        <div class="alert alert-danger">
            <?= $errors['credentials']?? '' ?>
        </div>
</div>
<?php endif;?>

<form method="post">
    <div class = "mb-3 mt-3">
        <label for="mail" class="form-label">Email address</label>
        <input type="email" class="form-control" name="email" id="email" value="<?php echo $inputs['email']?? '' ?>">
        <div class="form-text text-danger">
            <?= $error['email']??''?>
        </div>
    </div>

    <div class = "mb-3 mt-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" name="password" id="password" value="<?php echo $inputs['email']?? '' ?>">
        <div class="form-text text-danger">
            <?= $error['email']??''?>
        </div>
    </div>
    
    <button type="submit" name="login" class="btn btn-primary mb-5">Login</button>
</form>