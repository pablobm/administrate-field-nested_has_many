class Foo::StudentsController < ApplicationController
  before_action :set_foo_student, only: [:show, :edit, :update, :destroy]

  # GET /foo/students
  def index
    @foo_students = Foo::Student.all
  end

  # GET /foo/students/1
  def show
  end

  # GET /foo/students/new
  def new
    @foo_student = Foo::Student.new
  end

  # GET /foo/students/1/edit
  def edit
  end

  # POST /foo/students
  def create
    @foo_student = Foo::Student.new(foo_student_params)

    if @foo_student.save
      redirect_to @foo_student, notice: 'Student was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /foo/students/1
  def update
    if @foo_student.update(foo_student_params)
      redirect_to @foo_student, notice: 'Student was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /foo/students/1
  def destroy
    @foo_student.destroy
    redirect_to foo_students_url, notice: 'Student was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo_student
      @foo_student = Foo::Student.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def foo_student_params
      params.require(:foo_student).permit(:name, :school_id)
    end
end
