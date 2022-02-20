import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DepenseidEditComponent } from './depenseid-edit.component';

describe('DepenseidEditComponent', () => {
  let component: DepenseidEditComponent;
  let fixture: ComponentFixture<DepenseidEditComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DepenseidEditComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(DepenseidEditComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
