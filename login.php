<?php 
    session_start();
    include_once("modules/database.php");
    include_once("modules/functions.php");

    $errors = [];
    $inputs = [];

    const EMAIL_REQUIRED = 'Email invullen';
    const EMAIL_INVALID = 'Geldig email adres invullen';
    const PASSWORD_REQUIRED = 'Passoword invullen';
    const CREDENTIALS_NOT_Vaild = 'Verkeerde email en/of password';

if (isset($_POST['login'])) {
    $email = filter_input(INPUT_POST,'email' FILTER_VALIDATE_EMAIL);
    if ($email === flase) {
        $errors['email'] = EMAIL_REQUIRED;
    } else {
        $inputs['email'] = $email;
    }
}

$password = filter_input(INPUT_POST,'password');

if (EMAIL_INVALID === $password) {
    $errors['password'] = EMAIL_REQUIRED;
} else if (PASSWORD_INVALID === $password) {
    inputs ['password'] = PASSWORD_REQUIRED;
}

if (count($errors) === 0) {

    $result = checkLogin($inputs);
    switch ($result) {  
        case 'ADMIN':

            header("Location: admin.php");
            break;

        case 'FAILURE':
            $errors['credentials']=CREDENTIALS_NOT_VALID;
            include_once "Login.php";
            break;    
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