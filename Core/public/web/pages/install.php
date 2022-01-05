<div class="container mt-4">
  <div class="jumbotron">
    <h1 class="display-4">Ahoj 😊 Moje meno je Dia</h1>
    <p class="lead">Som nástroj ktorý ti pomôže spraviť tvoju vysnívanú webovú stránku a tým ušetríš množstvo času, ktorý môžeš využiť na pekné dni s tvojou rodinou alebo kamošmi 😊</p>
    <hr class="my-4">
    <div id='dia-install'>
      <template v-if='install == 1'>
        <p>Prosím zájdi do zložky kde sa nachádza Dia a nájdi config.php. Následne si nastav svoje databázové pripojenie. </br>
        <button v-if='!openTutorial' @click='openTutorial = 1' class="btn btn-warning mt-3">Ak si nevieš dať rady mám tu pre teba návod ✍</button></p>
        <template v-if='openTutorial'>
          <div class="card mb-4">
            <div class="card-body">
              <h2>1. Nájdite zložku s názvom dia</h2>
              <img src="core/public/images/install/step_1.jpg" alt="step1" class='mb-2'>
              <h2>2. Dvojklikom otvoríte config.php</h2>
              <img src="core/public/images/install/step_2.jpg" alt="step2" class='mb-2'>
              <h2>3. Nastavte svoje databázové údaje</h2>
              <img src="core/public/images/install/step_3.jpg" alt="step3" class='mb-2'>
              <h2>4. Ak ste zvládli predchádazjúce body môžťe kliknúť na tlačidlo pokračovať</h2>
            </div>
          </div>
        </template>
        <p class="lead">
          <button @click='install = 2' class="btn btn-primary btn-lg">Pokračovať</button>
        </p>
      </template>
      <template v-else-if='install == 2'>
        <p>Prosím nastav si tvoj prihlasovací učet pre prácu so mnou 💻</p>
        <?php 
          echo $ui->form(
            [
              'action' => 'dia_install',
            ],
            [
              $ui->input([
                'type' => 'text',
                'name' => 'name',
                'placeholder' => 'Zadaj meno',
                'description' => "Zadaj ľubovoľné meno pre administrátora",
                'style' => 'width:50%',
                'vmodel' => "name"
              ]),
              $ui->input([
                'type' => 'password',
                'name' => 'password',
                'placeholder' => 'Zadaj heslo',
                'description' => "Zadaj ľubovoľné heslo pre administrátora",
                'style' => 'width:50%',
                'vmodel' => 'password'
              ]),
              $ui->button(['type' => 'submit', 'name' => 'Inštalovať Diu', 'vif' => 'passwordIsIsset && nameIsIsset']),
            ]
          );
        ?>
      </template>
    </div>
  </div>
</div>

<script>
  const Install = {
  data() {
    return {
      install: 1,
      name: '',
      password: '',
      nameIsIsset: false,
      passwordIsIsset: false,
      readyToInstall: false,
      openTutorial: 0,
    }
  },
  watch: {
    name(value) {
      if (value.length > 0) {
        this.nameIsIsset = true;
      } else {
        this.nameIsIsset = false;
      }
    },
    password(value) {
      if (value.length > 0) {
        this.passwordIsIsset = true;
      } else {
        this.passwordIsIsset = false;
      }
    }
  },
}

Vue.createApp(Install).mount('#dia-install')
</script>