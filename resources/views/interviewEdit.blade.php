<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Добавление нового опроса</div>
    <div class='panel-body'>
      <form id="formInterview" method='post' action='{{CRUDBooster::mainpath('edit-save/'.$row->id)}}'>

        <div class='form-group'>
          <label>Заголовок</label>
          <input type='text' name='title' required class='form-control' value='{{ $row->title }}'/>
          <input type="hidden" name="csrf" value="{{ csrf_token() }}">
        </div>
          <div class='form-group'>
            <label>Вопросы</label>
            <div id="editor">
            <input type="hidden" name="options" :value="computeOptions">

              <br>
              <span v-for="option in options">
                <button @click="changeType(option.id, $event)">@{{option.type}}</button><br>
                @{{option.id+1}}.<button class="buttonDel" @click="removeQuestion(option.id, $event)">-</button><input v-model="option.title"></input> @{{ option.title }}
                  <span   v-for="answer in option.answers">
                    <br>
                    &nbsp;&nbsp;&nbsp;@{{answer.id+1}})
                    <button class="buttonDel" @click="removeAnswer(option.id,answer.id, $event)">-</button><input v-model="answer.title"></input>
                    @{{ answer.title+"("+answer.count+")" }}
                  </span>
                  <br><button class="buttonAdd" @click="addAnswer(option.id, $event)">+</button>ответ
                  <hr>
              </span>
              <button class="buttonAdd" @click="addQuestion($event)">+</button>вопрос
            </div>
          </div>



            <button type="submit" class="btn btn-primary" >Сохранить</button>
      </form>
    </div>
    <div class='panel-footer'>
    <!--  <input type='submit' @click="submitForm()" class='btn btn-primary' value='Сохранить'/> -->
    </div>
  </div>

  @endsection



  @push('bottom')
  <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.18/vue.min.js"></script>

  <script>
  var app = new Vue({
    el: '#editor',

    created: function(){
      var options = '{!! $row->options !!}';
      this.title = '{!! $row->title !!}';
      var optionsJSON = JSON.parse(options);
      this.options = optionsJSON;
    },

    computed: {
      computeOptions: function(){
        return JSON.stringify(this.options)
      }
    },

    data: {
      title: 'Опрос',
      message: 'test',
      options: [
        {
          id: 0,
          title: 'вопрос 1',
          type: 'radio',
          answers:[
            {
              id: 0,
              title: 'ответ или 1',
              count: 0,
            },
            {
              id: 1,
              title: 'ответ или 2',
              count: 0,
            },
          ],
        },

        {
          id: 1,
          title: 'вопрос 2',
          type: 'checkbox',
          answers:[
            {
              id: 0,
              title: 'ответ и 1',
              count: 0,
            },
            {
              id: 1,
              title: 'ответ и 2',
              count: 0,
            },
          ],
        },
      ],
    },

      methods:{
          submitForm: function(){
            console.log("formInterview submitForm")
            //document.getElementById("formInterview").submit();
          },

          ellOptions: function(){
            console.log(this.options)
          },


        changeType: function(index, event){//чекбокс/радио
            event.preventDefault();

            this.options[index].type=(this.options[index].type=="checkbox")?"radio":"checkbox";

            this.ellOptions();
        },

        addQuestion: function(event){//новый вопрос
            event.preventDefault();

            this.options.push({
              id: '',
              title: 'вопрос '+(this.options.length+1),
              type: 'radio',
              answers:[]
            });

            this.options.forEach(function(currentValue, index, array) {
              currentValue.id = index;
            });

            this.ellOptions();
        },

        removeQuestion: function(index, event){
            event.preventDefault();

            this.options.splice(index, 1)

            this.options.forEach(function(currentValue, index, array) {
              currentValue.id = index;
            });

            this.ellOptions();
        },

        addAnswer: function(index, event){//новый ответ
            event.preventDefault();

            this.options[index].answers.push({
              id: '',
              title: 'ответ '+(this.options[index].answers.length+1),
              count: 0,
            });

            this.options[index].answers.forEach(function(currentValue, index, array) {
              currentValue.id = index;
            });

            this.ellOptions();
        },

        removeAnswer: function(index, answerindex, event){
            event.preventDefault();

            this.options[index].answers.splice(answerindex, 1);

            this.options[index].answers.forEach(function(currentValue, index, array) {
              currentValue.id = index;
            });

            this.ellOptions();
        }

      }
  });
  </script>

  <style>
    .buttonAdd{
        background-color: green; /* Green */
        border: none;
        color: white;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        font-weight: bold;
        width: 24px;
        height: 24px;
        border-radius: 50%;
    }

    .buttonDel{
        background-color: red; /* Green */
        border: none;
        color: white;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        font-weight: bold;
        width: 24px;
        height: 24px;
        border-radius: 50%;

    }
  </style>

  @endpush
