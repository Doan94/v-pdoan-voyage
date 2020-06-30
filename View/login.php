<?php require 'inc/header.php' ?>
<?php require 'inc/topbar.php' ?>
<img src="static/img/palmier.jpg" width="100%">
<div class="container-fluid amber lighten-4">
    <div class="row">
		<div class="col l4 m6 s12 py-5 px-5 ">
			<div class="card-panel green lighten-2">


			<center>
			<?php require 'inc/msg.php' ?>
			</center>
				<div id="login">
					<div class="container">
						<div id="login-row" class="row justify-content-center align-items-center">
							<div id="login-column" class="col-md-6">
								<div id="login-box" class="col-md-12">
									<form id="login-form" class="form" action="" method="post">
										<h3 class="text-center text-white ">Se connecter</h3>
										<div class="form-group">
											<label for="email" class="text-white">Adresse email:</label><br>
											<input type="email" name="email" id="email" class="form-control">
										</div>
										<div class="form-group">
											<label for="password" class="text-white">Mot de passe</label><br>
											<input type="password" name="password" id="password" class="form-control">
										</div>
										<div class="form-group">
											<center>
												<button type="submit" name="submit" class="waves-effect waves-light btn light-blue">
												<i class="material-icons left">perm_identity</i>
												Se connecter
												</button>
											</center>
											<center>
												<a href="<?=ROOT_URL?>blog_registration.html">Pas encore inscrit ?</a>
											</center>

										</div>
										<div id="register-link" class="text-right">
											<a href="#" class="text-white">Register here</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
		</div>
    </div>
</div>
<?php require 'inc/footer.php' ?>
