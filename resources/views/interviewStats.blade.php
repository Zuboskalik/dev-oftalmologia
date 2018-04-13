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
            <div v-for="object in objects">
              <h3>Опрос @{{'"'+object.title+'"'}}</h3><br>
              <span v-for="option in object.options">
                <p><b>Вопрос "@{{ option.title }}":</b></p>
                <div :id="'question'+option.id">
                  Ответы:
                  <li  v-for="answer in option.answers">
                    @{{ answer.title+' ->'}} <i>@{{ 'Ответов: '+answer.count}}</i>
                  </li >
                </div>
                <br>
              </span>
              <hr>
            </div>

          </div>
        <!-- etc .... -->
        </div>

    </div>
  </div>

  @endsection



  @push('bottom')
  <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.18/vue.min.js"></script>

  <script>
  String.prototype.replaceAll = function(search, replacement) {
    var target = this;
    return target.split(search).join(replacement);
  };

  var app = new Vue({
      el: '#details',

      created: function(){
        var rowstr = '{!! $row !!}';

        rowstr = rowstr.replaceAll( '"[','[');
        rowstr = rowstr.replaceAll(']"',']');

        console.log(rowstr)

        this.objects = JSON.parse(rowstr);

        console.log(this.objects)

        var dis = this;

        /*dis.objects.forEach(function(currentValue, index, array) {
          //dis.votes[currentValue.id] = {};
          currentValue.options.forEach(function(currentValueA, indexA, arrayA) {
            //dis.votes[currentValue.id][currentValueA.id] = currentValueA.count;
            console.log('currentValueA', currentValueA)
          });
        });*/
      },

      computed: {
      },

      data: {
        objects: [],
      },

      methods:{



      }
  });
  </script>

  @endpush
