require "application_system_test_case"

class CursosTest < ApplicationSystemTestCase
  setup do
    @curso = cursos(:one)
  end

  test "visiting the index" do
    visit cursos_url
    assert_selector "h1", text: "Cursos"
  end

  test "creating a Curso" do
    visit cursos_url
    click_on "New Curso"

    check "Asignado" if @curso.asignado
    fill_in "Cantidadalumnos", with: @curso.cantidadalumnos
    fill_in "Carrera", with: @curso.carrera
    fill_in "Comision", with: @curso.comision
    fill_in "Nombre", with: @curso.nombre
    fill_in "Turno", with: @curso.turno
    click_on "Create Curso"

    assert_text "Curso was successfully created"
    click_on "Back"
  end

  test "updating a Curso" do
    visit cursos_url
    click_on "Edit", match: :first

    check "Asignado" if @curso.asignado
    fill_in "Cantidadalumnos", with: @curso.cantidadalumnos
    fill_in "Carrera", with: @curso.carrera
    fill_in "Comision", with: @curso.comision
    fill_in "Nombre", with: @curso.nombre
    fill_in "Turno", with: @curso.turno
    click_on "Update Curso"

    assert_text "Curso was successfully updated"
    click_on "Back"
  end

  test "destroying a Curso" do
    visit cursos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curso was successfully destroyed"
  end
end
