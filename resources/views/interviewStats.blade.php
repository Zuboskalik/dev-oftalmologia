<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Статистика</div>
    <div class='panel-body'>

        <div class='form-group'>

          <div id="details">
            <!--<div v-for="object in objects">-->
              <h3>Опрос @{{'"'+title+'"'}}</h3><br>
              <table v-for="q in options" style="width:35%" border="2">
  							<tr>
                  <td colspan="2"> @{{'Вопрос #'+q.id+': '+q.title}}</td>
                </tr>
								<tr v-for="a in q.answers">
                  <td style="width:75%" >@{{a.title}}</td><td>@{{a.count}}</td>
                </tr>
  						</table>
              <hr>
            <!--</div>-->

          </div>
        <!-- etc .... -->
        </div>

    </div>
  </div>

  @endsection



  @push('bottom')
  <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.18/vue.min.js"></script>

  <script>
  var app = new Vue({
      el: '#details',

      created: function(){
        this.title = '{!! $row->title !!}'
        this.options = JSON.parse('{!! $row->options !!}')

        console.log(this.options)
      },

      computed: {
      },

      data: {
        title: '',
        options: [],
      },

      methods:{



      }
  });
  </script>

  @endpush
