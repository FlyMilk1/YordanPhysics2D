# frozen_string_literal: true

require_relative 'vector2'

class RigidBody2d
  attr_accessor :mass, :velocity, :acceleration, :angular_velocity, :angular_acceleration, :position, :rotation, :drag

  def initialize(mass, position, rotation, drag = 0.0)
    @mass = mass
    @velocity = Vector2.new(0, 0)
    @acceleration = Vector2.new(0, 0)
    @angular_velocity = 0.0
    @angular_acceleration = 0.0
    @position = position
    @rotation = rotation
    @drag = drag
  end

  def update(time_step)
    @velocity.x += @acceleration.x * time_step
    @velocity.y += @acceleration.y * time_step
    @position.x += @velocity.x * time_step
    @position.y += @velocity.y * time_step
    @angular_velocity += @angular_acceleration * time_step
    @rotation += @angular_velocity * time_step

    #deceleration with drag
    @velocity.multiply_with_scalar 1 - @drag * time_step

  end

  def add_linear_force(force)
    @acceleration.x += force.x / @mass
    @acceleration.y += force.y / @mass
  end

end
