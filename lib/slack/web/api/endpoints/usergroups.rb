# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Usergroups
          #
          # This method is used to create a user group.
          #
          # @option options [Object] :name
          #   A name for the user group. Must be unique among user groups.
          # @option options [Object] :handle
          #   A mention handle. Must be unique among channels, users and user groups.
          # @option options [Object] :description
          #   A short description of the user group.
          # @option options [Object] :channels
          #   A comma separated string of encoded channel IDs for which the user group uses as a default.
          # @option options [Object] :include_count
          #   Include the number of users in each user group.
          # @see https://api.slack.com/methods/usergroups.create
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/usergroups/usergroups.create.json
          def usergroups_create(options = {})
            throw ArgumentError.new('Required arguments :name missing') if options[:name].nil?
            post('usergroups.create', options)
          end

          #
          # This method disables an existing user group.
          #
          # @option options [Object] :usergroup
          #   The encoded ID of the user group to disable.
          # @option options [Object] :include_count
          #   Include the number of users in the user group.
          # @see https://api.slack.com/methods/usergroups.disable
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/usergroups/usergroups.disable.json
          def usergroups_disable(options = {})
            throw ArgumentError.new('Required arguments :usergroup missing') if options[:usergroup].nil?
            post('usergroups.disable', options)
          end

          #
          # This method enables a user group which was previously disabled.
          #
          # @option options [Object] :usergroup
          #   The encoded ID of the user group to enable.
          # @option options [Object] :include_count
          #   Include the number of users in the user group.
          # @see https://api.slack.com/methods/usergroups.enable
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/usergroups/usergroups.enable.json
          def usergroups_enable(options = {})
            throw ArgumentError.new('Required arguments :usergroup missing') if options[:usergroup].nil?
            post('usergroups.enable', options)
          end

          #
          # This method returns a list of all user groups in the team. This can optionally include disabled user groups.
          #
          # @option options [Object] :include_disabled
          #   Include disabled user groups.
          # @option options [Object] :include_count
          #   Include the number of users in each user group.
          # @option options [Object] :include_users
          #   Include the list of users for each user group.
          # @see https://api.slack.com/methods/usergroups.list
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/usergroups/usergroups.list.json
          def usergroups_list(options = {})
            post('usergroups.list', options)
          end

          #
          # This method updates the properties of an existing user group.
          #
          # @option options [Object] :usergroup
          #   The encoded ID of the user group to update.
          # @option options [Object] :name
          #   A name for the user group. Must be unique among user groups.
          # @option options [Object] :handle
          #   A mention handle. Must be unique among channels, users and user groups.
          # @option options [Object] :description
          #   A short description of the user group.
          # @option options [Object] :channels
          #   A comma separated string of encoded channel IDs for which the user group uses as a default.
          # @option options [Object] :include_count
          #   Include the number of users in the user group.
          # @see https://api.slack.com/methods/usergroups.update
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/usergroups/usergroups.update.json
          def usergroups_update(options = {})
            throw ArgumentError.new('Required arguments :usergroup missing') if options[:usergroup].nil?
            post('usergroups.update', options)
          end

          #
          # This method updates the list of users that belong to a user group. This method replaces all users in a user group with the list of users provided in the users parameter.
          #
          # @option options [Object] :usergroup
          #   The encoded ID of the user group to update.
          # @option options [Object] :users
          #   A comma separated string of encoded user IDs that represent the entire list of users for the user group.
          # @option options [Object] :include_count
          #   Include the number of users in the user group.
          # @see https://api.slack.com/methods/usergroups.users
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/usergroups/usergroups.users.json
          def usergroups_users(options = {})
            throw ArgumentError.new('Required arguments :usergroup missing') if options[:usergroup].nil?
            throw ArgumentError.new('Required arguments :users missing') if options[:users].nil?
            post('usergroups.users', options)
          end
        end
      end
    end
  end
end
