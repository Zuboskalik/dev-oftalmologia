<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>{{$row->title}}</div>
    <div class='panel-body'>
      <form id="formInterview" method='post' action='{{CRUDBooster::mainpath('edit-save/'.$row->id)}}'>

        <div class='form-group'>
          <!--<p>{{$row->options}}</p>-->
          <div id="details">
            <input type="hidden" name="title" value="{{$row->title}}">
            <input type="hidden" name="options" :value="computeOptions">

            <span v-for="option in options">
              <p>@{{option.id+1}}.@{{ option.title }}</p>
                  <div :id="'question'+option.id">
                    <div v-for="answer in option.answers">
                      <input :type="option.type" :name="'answer'+option.id" :id="'answer_'+option.id+'_'+answer.id" :value="answer.id" v-model="votes[option.id]">
                      <label :for="'question'+answer.id">@{{ answer.title+'['+answer.count+']' }}</label>
                    </div>
                    Выбрано: @{{ '('+votes[option.id]+')' }}
                  </div>
                <hr>
            </span>

            <br><button  class="btn btn-primary"  @click="buttonAnswer($event)">Отправить</button>
          </div>
        <!-- etc .... -->
        </div>

      </form>
    </div>
  </div>

  @endsection



  @push('bottom')
  <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.18/vue.min.js"></script>

  <script>
  var app = new Vue({
      el: '#details',

      created: function(){
        var options = '{!! $row->options !!}';
        var optionsJSON = JSON.parse(options);
        this.options = optionsJSON;
        var dis = this;
        dis.votes=[];
        this.options.forEach(function(currentValue, index, array) {
          //dis.votes[currentValue.id] = {};
          currentValue.answers.forEach(function(currentValueA, indexA, arrayA) {
            //dis.votes[currentValue.id][currentValueA.id] = currentValueA.count;
            dis.votes[currentValue.id] = (currentValue.type=='radio')?0:[];
          });
        });
      },

      computed: {
        computeOptions: function(){
          return JSON.stringify(this.options)
        },
        computeTitle: function(){
          return "{{$row->title}}"
        }
      },

      data: {
        options: [],
        votes: [],
      },

      methods:{
        buttonAnswer: function(event){
            event.preventDefault();

            var dis = this;

            console.log('dis.votes',dis.votes)

            dis.options.forEach(function(currentValue, index, array) {
              //dis.votes[currentValue.id] = {};
              currentValue.answers.forEach(function(currentValueA, indexA, arrayA) {
                //console.log('currentValue', currentValue)
                //dis.votes[currentValue.id][currentValueA.id] = currentValueA.count;
                if (currentValue.type=='radio' && dis.votes[currentValue.id]==currentValueA.id) currentValueA.count++;

                if (currentValue.type=='checkbox') {
                  console.log('dis.votes[currentValue.id]')
                  console.log(dis.votes[currentValue.id])
                  //console.log(currentValue.id+'/'+currentValueA.id)
                }

                if (currentValue.type=='checkbox' && dis.votes[currentValue.id].indexOf(currentValueA.id)>-1) currentValueA.count++;
              });
            });

            console.log(dis.options)

            setTimeout(function(){$('#formInterview').submit()},500)

        },

        ellOptions: function(){
          console.log(this.options)
        },


      }
  });
  </script>

  @endpush
